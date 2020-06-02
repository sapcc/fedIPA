# tinyIPA

## Description

Based upon $distribution (right now Fedora 31) this tooling creates with dracut an initramfs and extracts the kernel for booting a server via iPXE in an OpenStack-Ironic environment.

## Requirements

* git
* python3 >= 3.5
* systemd-nspawn
* rpm
* dnf
* make

## HowTo

```shell
git clone https://github.com/killermoehre/tinyipa.git
cd tinyipa
make
```

The created files are in `mkosi.builddir`.
