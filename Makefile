ifeq ($(UID),0)
	SUDO =
else
	SUDO = sudo
endif

DISTRIBUTION ?= fedora
RELEASE ?= 36
OUTPUT_DIR ?= mkosi.output/$(DISTRIBUTION)~$(RELEASE)
MKOSI ?= $(SUDO) ./mkosi/bin/mkosi
MKOSI_BUILD = $(MKOSI) --force

DEVICE_OPTS ?= -device virtio-serial-pci,id=virtio-serial0,bus=pci.0,addr=0x4 -device virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x6
CPU_OPTS ?= -smp 2,sockets=2,cores=1,threads=1 -cpu Cascadelake-Server-noTSX
NET_OPTS ?= -netdev 'user,id=n0,net=192.168.76.0/24,dhcpstart=192.168.76.9,hostfwd=tcp::9999-:9999,guestfwd=tcp:192.168.76.8:8080-cmd:busybox httpd -i -h ${OUTPUT_DIR}' -device virtio-net-pci,netdev=n0
QEMU = $(SUDO) qemu-system-x86_64 -accel kvm -m 4096 -nographic -kernel $(OUTPUT_DIR)/image.vmlinuz -initrd $(OUTPUT_DIR)/image.initrd $(DEVICE_OPTS) $(CPU_OPTS) $(NET_OPTS)

.PHONY: default
default: git-submodule-init build

.PHONY: clean
clean:
	$(SUDO) rm -rf mkosi.builddir/fedipa.*
	$(MKOSI) --skip-final-phase false clean

.PHONY: build
build: $(OUTPUT_DIR)/image.raw

.PHONY: shell
shell:
	$(MKSOSI) shell

.PHONY: test
test: test_live

.PHONY: test_live
test_live: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.root.squashfs
	$(QEMU) -append "console=ttyS0 highres=off nofb nomodeset vga=normal ipa-disk-wait-attempts=1 ipa-disk-wait-delay=1 rd.shell log_buf_len=1M rd.ctty=ttyS0 root=live:http://192.168.76.8:8080/image.root.squashfs"

.PHONY: test_disk
test_disk: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.root.raw
	$(QEMU) \
                -device virtio-scsi-pci,id=scsi \
                -device scsi-hd,drive=hd \
                -drive if=none,aio=io_uring,id=hd,format=raw,file=$(OUTPUT_DIR)/image.root.raw \
		-append "console=ttyS0 highres=off nofb nomodeset vga=normal ipa-disk-wait-attempts=1 ipa-disk-wait-delay=1 rd.shell log_buf_len=1M rd.ctty=ttyS0 root=/dev/sda"


.PHONY: git-submodule-init
git-submodule-init:
	git submodule update --init --recursive --single-branch --recommend-shallow

$(OUTPUT_DIR)/image.cmdline $(OUTPUT_DIR)/image.efi $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.raw $(OUTPUT_DIR)/image.raw.manifest $(OUTPUT_DIR)/image.root.raw $(OUTPUT_DIR)/image.vmlinuz &: mkosi.build mkosi.postinst mkosi.finalize mkosi.default
	$(MKOSI_BUILD) build

$(OUTPUT_DIR)/image.root.squashfs: $(OUTPUT_DIR)/image.root.raw tosquashfs
	$(SUDO) ./tosquashfs $< $@
