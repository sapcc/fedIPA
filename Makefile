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

DEVICE_OPTS ?= -device virtio-serial-pci,id=virtio-serial0,bus=pci.0,addr=0x4 -device virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x6
CPU_OPTS ?= -smp 2,sockets=2,cores=1,threads=1 -cpu Cascadelake-Server-noTSX
NET_OPTS ?= -netdev 'user,id=n0,net=$(SUBNET).0/24,dhcpstart=$(FIRST_IP),hostfwd=tcp::9999-:9999,guestfwd=tcp:$(MOCK_IPA_API)-cmd:$(MOCK_IPA_CMD),guestfwd=tcp:$(MOCK_REPO)-cmd:${MOCK_REPO_CMD}' -device virtio-net-pci,netdev=n0
QEMU = $(SUDO) qemu-system-x86_64 -accel kvm -m 4096 -nographic -kernel $(OUTPUT_DIR)/image.vmlinuz -initrd $(OUTPUT_DIR)/image.initrd $(DEVICE_OPTS) $(CPU_OPTS) $(NET_OPTS)

mkosi_outputs = $(addprefix $(OUTPUT_DIR)/, image image.manifest image.cmdline image.efi image.initrd image.vmlinuz)
mkosi_inputs = mkosi.build mkosi.postinst mkosi.default $(wildcard mkosi.extra/**/*) $(wildcard src/**/*) $(wildcard requirements/**/*)

.PHONY: default
default: git-submodule-init build

.PHONY: clean
clean:
	$(SUDO) rm -rf mkosi.builddir/fedipa.*
	$(MKOSI) --skip-final-phase false clean

build: $(OUTPUT_DIR)/image.squashfs

.PHONY: shell
shell:
	$(MKSOSI) shell

test: $(OUTPUT_DIR)/image.vmlinuz $(OUTPUT_DIR)/image.initrd $(OUTPUT_DIR)/image.squashfs
	$(QEMU) -append "console=ttyS0 highres=off nofb nomodeset vga=normal ipa-disk-wait-attempts=1 ipa-disk-wait-delay=1 rd.shell log_buf_len=1M rd.ctty=ttyS0 root=live:http://$(MOCK_REPO)/image.squashfs ipa-api-url=http://$(MOCK_IPA_API)"

.PHONY: git-submodule-init
git-submodule-init:
	git submodule update --init --recursive --single-branch --recommend-shallow

$(mkosi_outputs) &: $(mkosi_inputs)
	$(MKOSI) --force build

$(OUTPUT_DIR)/image.squashfs: $(OUTPUT_DIR)/image $(OUTPUT_DIR)/image.manifest squashfs.exclude
	$(SUDO) mksquashfs $< $@ -noappend -comp zstd -wildcards -ef squashfs.exclude
	$(SUDO) chown $(USER) $@
