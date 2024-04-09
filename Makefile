SHELL := /usr/bin/env bash
ifeq ($(UID),0)
	SUDO =
else
	SUDO = sudo
endif

OUTPUT ?= image
OUTPUT_DIR ?= mkosi.output
MKOSI ?= $(SUDO) ./mkosi/bin/mkosi --debug-shell --debug
SUBNET ?= 192.168.76
FIRST_IP = $(SUBNET).9
MOCK_HTTP_IP = $(SUBNET).8
MOCK_REPO = $(MOCK_HTTP_IP):8080
MOCK_REPO_CMD = /usr/bin/env USER=$(ORIGNAL_USER) OUTPUT_DIR=$(OUTPUT_DIR) lighttpd -1 -f mock/repo.conf
MOCK_IPA_API = $(MOCK_HTTP_IP):8081
MOCK_IPA_CMD = /usr/bin/env USER=$(ORIGNAL_USER) lighttpd -1 -f mock/ipa-api.conf
DOMAIN = openstack.qa-de-1.cloud.sap
OVMF ?= $(wildcard /usr/share/OVMF/OVMF_CODE.fd /usr/share/edk2/ovmf/OVMF_CODE.fd)

ORIGNAL_USER_ID ?= $(shell test -v SUDO_UID && echo $$SUDO_UID || test -v PKEXEC_UID && echo $$PKEXEC_UID || echo $$UID)
ORIGNAL_USER ?= $(shell id -un $(ORIGNAL_USER_ID))

DEVICE_OPTS ?= -device virtio-serial-pci,id=virtio-serial0,bus=pci.0,addr=0x4 -device virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x6
CPU_OPTS ?= -smp 2,sockets=2,cores=1,threads=1 -cpu host
NET_OPTS ?= -netdev 'user,id=n0,net=$(SUBNET).0/24,dhcpstart=$(FIRST_IP),hostname=host-a,domainname=$(DOMAIN),dnssearch=$(DOMAIN),hostfwd=tcp::9999-:9999,guestfwd=tcp:$(MOCK_IPA_API)-cmd:$(MOCK_IPA_CMD),guestfwd=tcp:$(MOCK_REPO)-cmd:${MOCK_REPO_CMD}' -device virtio-net-pci,netdev=n0
BIOS_OPTS ?= -bios $(OVMF) -device ahci,id=achi0
DISK_OPTS ?= -drive if=none,id=nvme0,cache=none,format=raw,aio=io_uring,file=vmdisk.img -device nvme,serial=deadbeef,drive=nvme0

QEMU = $(SUDO) qemu-system-x86_64 -accel kvm -m 4096 -nographic $(BIOS_OPTS) $(DEVICE_OPTS) $(CPU_OPTS) $(NET_OPTS) $(DISK_OPTS)

file_inputs = $(shell find src/ requirements/ mkosi.extra/)
mkosi_outputs = $(addprefix $(OUTPUT_DIR)/, $(OUTPUT) $(OUTPUT).vmlinuz $(OUTPUT).initrd)
mkosi_inputs = mkosi.build.chroot mkosi.postinst.chroot mkosi.finalize mkosi.conf $(file_inputs)

.PHONY: default
default: git-submodule-init build

.PHONY: iso
iso: $(OUTPUT_DIR)/image.iso

.PHONY: clean
clean:
	$(SUDO) rm -rf mkosi.builddir/image* mkosi.builddir/initrd*
	$(MKOSI) --skip-final-phase false clean

build: $(OUTPUT_DIR)/$(OUTPUT).squashfs

.PHONY: shell
shell:
	$(MKSOSI) shell

vmdisk.img:
	qemu-img create -f raw -o preallocation=falloc vmdisk.img 60G

test: $(OUTPUT_DIR)/$(OUTPUT).vmlinuz $(OUTPUT_DIR)/$(OUTPUT) $(OUTPUT_DIR)/$(OUTPUT).squashfs vmdisk.img
	$(QEMU) \
		-kernel $(OUTPUT_DIR)/$(OUTPUT).vmlinuz -initrd $(OUTPUT_DIR)/$(OUTPUT).initrd \
		-append "console=ttyS0 nofb nomodeset vga=normal root=live:http://$(MOCK_REPO)/image.squashfs ipa-api-url=http://$(MOCK_IPA_API)"

test_iso: $(OUTPUT_DIR)/$(OUTPUT).iso
	$(QEMU) \
		-drive file=$<,format=raw,if=none,media=cdrom,id=drive-cd1,readonly=on \
		-device ide-cd,bus=achi0.0,drive=drive-cd1,id=cd1,bootindex=1

.PHONY: git-submodule-init
git-submodule-init:
	git submodule update --init --recursive --single-branch --recommend-shallow

$(mkosi_outputs) &: $(mkosi_inputs)
	$(SUDO) rm -fr $(OUTPUT_DIR)/image* $(OUTPUT_DIR)/initrd*
	$(MKOSI) build
	$(SUDO) chown $(ORIGNAL_USER) $(OUTPUT_DIR)

$(OUTPUT_DIR)/$(OUTPUT)_iso.cmdline: Makefile
	echo 'console=ttyS0 nofb nomodeset vga=normal root=live:/dev/sr0 ipa-api-url=http://$(MOCK_IPA_API)' > $@

.PHONY: iso_efi
iso_efi: $(OUTPUT_DIR)/image_iso.efi

$(OUTPUT_DIR)/$(OUTPUT)_iso.efi: $(OUTPUT_DIR)/$(OUTPUT).vmlinuz $(OUTPUT_DIR)/$(OUTPUT) $(OUTPUT_DIR)/$(OUTPUT)_iso.cmdline
	rm -f $@ && objcopy \
		--add-section .cmdline=$(OUTPUT_DIR)/$(OUTPUT)_iso.cmdline --change-section-vma .cmdline=0x30000 \
		--add-section .linux=$(OUTPUT_DIR)/image.vmlinuz --change-section-vma .linux=0x2000000 \
		--add-section .initrd=$(OUTPUT_DIR)/$(OUTPUT).initrd --change-section-vma .initrd=0x3000000 \
		/usr/lib/systemd/boot/efi/linuxx64.efi.stub \
		$@

# This could be done with the Output.Format=plain_squashfs as well, but we only need it
# for the final image, not the build image.
$(OUTPUT_DIR)/$(OUTPUT).squashfs: $(OUTPUT_DIR)/$(OUTPUT) squashfs.exclude
	$(SUDO) mksquashfs $< $@ -noappend -comp zstd -wildcards -ef squashfs.exclude
	$(SUDO) chown $(ORIGNAL_USER) $@

$(OUTPUT_DIR)/$(OUTPUT).iso: $(OUTPUT_DIR)/$(OUTPUT).efi $(OUTPUT_DIR)/$(OUTPUT).squashfs mkiso
	$(SUDO) ./mkiso $(OUTPUT_DIR)/$(OUTPUT).iso
	$(SUDO) chown $(ORIGNAL_USER) $@
