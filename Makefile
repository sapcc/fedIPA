ifeq ($(UID),0)
	SUDO =
else
	SUDO = sudo
endif

DISTRIBUTION ?= fedora
RELEASE ?= 36
OUTPUT_DIR ?= mkosi.output/$(DISTRIBUTION)~$(RELEASE)
MKOSI ?= $(SUDO) ./mkosi/bin/mkosi
SUBNET ?= 192.168.76
FIRST_IP = $(SUBNET).9
MOCK_HTTP_IP = $(SUBNET).8
MOCK_REPO = $(MOCK_HTTP_IP):8080
MOCK_REPO_CMD = env OUTPUT_DIR=$(OUTPUT_DIR) lighttpd -1 -f mock/repo.conf
MOCK_IPA_API = $(MOCK_HTTP_IP):8081
MOCK_IPA_CMD = lighttpd -1 -f mock/ipa-api.conf
DOMAIN = openstack.qa-de-1.cloud.sap

DEVICE_OPTS ?= -device virtio-serial-pci,id=virtio-serial0,bus=pci.0,addr=0x4 -device virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x6
CPU_OPTS ?= -smp 2,sockets=2,cores=1,threads=1 -cpu Cascadelake-Server-noTSX
NET_OPTS ?= -netdev 'user,id=n0,net=$(SUBNET).0/24,dhcpstart=$(FIRST_IP),hostname=host-a,domainname=$(DOMAIN),dnssearch=$(DOMAIN),hostfwd=tcp::9999-:9999,guestfwd=tcp:$(MOCK_IPA_API)-cmd:$(MOCK_IPA_CMD),guestfwd=tcp:$(MOCK_REPO)-cmd:${MOCK_REPO_CMD}' -device virtio-net-pci,netdev=n0
BIOS_OPTS ?= -bios /usr/share/edk2/ovmf/OVMF_CODE.fd -device ahci,id=achi0

QEMU = $(SUDO) qemu-system-x86_64 -accel kvm -m 4096 -nographic $(BIOS_OPTS) $(DEVICE_OPTS) $(CPU_OPTS) $(NET_OPTS)

file_inputs = $(shell find src/ requirements/ mkosi.extra/)
mkosi_outputs = $(addprefix $(OUTPUT_DIR)/, image image.manifest image.cmdline image.efi image.initrd image.vmlinuz)
mkosi_inputs = mkosi.build mkosi.postinst mkosi.default $(file_inputs)

.PHONY: default
default: git-submodule-init build

.PHONY: iso
iso: $(OUTPUT_DIR)/image.iso

.PHONY: clean
clean:
	$(SUDO) rm -rf mkosi.builddir/fedipa.*
	$(MKOSI) --skip-final-phase false clean

build: $(OUTPUT_DIR)/image.squashfs

.PHONY: shell
shell:
	$(MKSOSI) shell

test: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.squashfs
	$(QEMU) \
		-kernel $(OUTPUT_DIR)/image.vmlinuz -initrd $(OUTPUT_DIR)/image.initrd \
		-append "console=ttyS0 nofb nomodeset vga=normal root=live:http://$(MOCK_REPO)/image.squashfs ipa-api-url=http://$(MOCK_IPA_API)"

test_iso: $(OUTPUT_DIR)/image.iso
	$(QEMU) \
		-drive file=$<,format=raw,if=none,media=cdrom,id=drive-cd1,readonly=on \
		-device ide-cd,bus=achi0.0,drive=drive-cd1,id=cd1,bootindex=1

.PHONY: git-submodule-init
git-submodule-init:
	git submodule update --init --recursive --single-branch --recommend-shallow

$(mkosi_outputs) &: $(mkosi_inputs)
	$(MKOSI) --force build

.PHONY: efi
efi: $(OUTPUT_DIR)/image.efi

$(OUTPUT_DIR)/image.efi: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.cmdline
	rm -f $@ && objcopy \
		--add-section .cmdline=$(OUTPUT_DIR)/image.cmdline --change-section-vma .cmdline=0x30000 \
		--add-section .linux=$(OUTPUT_DIR)/image.vmlinuz --change-section-vma .linux=0x2000000 \
		--add-section .initrd=$(OUTPUT_DIR)/image.initrd --change-section-vma .initrd=0x3000000 \
		/usr/lib/systemd/boot/efi/linuxx64.efi.stub \
		$@


$(OUTPUT_DIR)/image_iso.cmdline: $(OUTPUT_DIR)/image.cmdline
	sed 's#root=LABEL=root#root=live:/dev/sr0#' $< > $@

.PHONY: iso_efi
iso_efi: $(OUTPUT_DIR)/image_iso.efi

$(OUTPUT_DIR)/image_iso.efi: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image_iso.cmdline
	rm -f $@ && objcopy \
		--add-section .cmdline=$(OUTPUT_DIR)/image_iso.cmdline --change-section-vma .cmdline=0x30000 \
		--add-section .linux=$(OUTPUT_DIR)/image.vmlinuz --change-section-vma .linux=0x2000000 \
		--add-section .initrd=$(OUTPUT_DIR)/image.initrd --change-section-vma .initrd=0x3000000 \
		/usr/lib/systemd/boot/efi/linuxx64.efi.stub \
		$@

# This could be done with the Output.Format=plain_squashfs as well, but we only need it
# for the final image, not the build image.
$(OUTPUT_DIR)/image.squashfs: $(OUTPUT_DIR)/image $(OUTPUT_DIR)/image.manifest squashfs.exclude
	$(SUDO) mksquashfs $< $@ -noappend -comp zstd -wildcards -ef squashfs.exclude
	$(SUDO) chown $(USER) $@

$(OUTPUT_DIR)/image.iso: $(OUTPUT_DIR)/image_iso.efi $(OUTPUT_DIR)/image.squashfs mkiso
	$(SUDO) ./mkiso $(OUTPUT_DIR)/image.iso
	$(SUDO) chown $(USER) $@
