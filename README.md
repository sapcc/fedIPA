# fedIPA

## Description

Based upon Fedora this tooling creates with dracut an initramfs and extracts the kernel for booting a server via iPXE in an OpenStack-Ironic environment.

## Requirements

* git
* python3 >= 3.5
* systemd-nspawn
* rpm
* dnf
* make

Command to install requirements on Fedora
```shell
sudo dnf install git python3 make systemd-container
```

## HowTo

```shell
git clone https://github.com/sapcc/fedIPA.git
cd fedIPA
make
```

The created files are in `mkosi.builddir`.
