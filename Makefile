ifeq ($(UID),0)
	mkosi = ./mkosi/mkosi
	qemu = qemu-system-x86_64
else
	mkosi = sudo ./mkosi/mkosi
	qemu = sudo qemu-system-x86_64
endif

DISTRIBUTION ?= fedora

.PHONY: default
default: git-submodule-init clean build

.PHONY: all
all: git-submodule-init clean build-all

.PHONY: clean
clean:
	$(mkosi) clean

.PHONY: build
build:
	$(mkosi) build

.PHONY: build-all
build-all:
	$(mkosi) --all build

.PHONY: shell
shell:
	$(mkosi) shell

.PHONY: test
test: 
	$(qemu) -accel kvm \
		-m 1024 \
		-kernel mkosi.builddir/tinyipa.$(DISTRIBUTION).kernel \
		-initrd mkosi.builddir/tinyipa.$(DISTRIBUTION).initramfs \
		-nographic \
		-display vnc=0.0.0.0:0 \
		-append "console=ttyS0"

.PHONY: git-submodule-init
git-submodule-init:
	git submodule init -- mkosi
	git submodule update -- mkosi
