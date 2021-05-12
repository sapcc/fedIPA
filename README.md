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

### Howto add packages to the image

If packages need to be available during the build they need to be added to the list of `BuildPackages` in [mkosi.files/mkosi.fedora](https://github.com/sapcc/fedIPA/blob/master/mkosi.files/mkosi.fedora)

If the package should end up in the IPA itself it needs to be included in a  `_packages_to_install+` line in [mkosi.extra/usr/lib/dracut/modules.d/01setup-ironic-python-agent/module-setup.sh](https://github.com/sapcc/fedIPA/blob/master/mkosi.extra/usr/lib/dracut/modules.d/01setup-ironic-python-agent/module-setup.sh)
But they can only be installed if they are available in the system so usually they need to be included in the BuildPackages as well.
