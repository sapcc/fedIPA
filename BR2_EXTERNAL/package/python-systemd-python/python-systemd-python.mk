# vim: noexpandtab filetype=make
################################################################################
#
# python-systemd-python
#
################################################################################

PYTHON_SYSTEMD_PYTHON_VERSION = 234
PYTHON_SYSTEMD_PYTHON_SOURCE = systemd-python-234.tar.gz
PYTHON_SYSTEMD_PYTHON_SITE = https://files.pythonhosted.org/packages/e8/a8/00ba0f605837a8f69523e6c3a4fb14675a6430c163f836540129c50b3aef
PYTHON_SYSTEMD_PYTHON_LICENSE = LGPL-2.1-or-later
PYTHON_SYSTEMD_PYTHON_LICENSE_FILES = LICENSE
PYTHON_SYSTEMD_PYTHON_SETUP_TYPE = setuptools

$(eval $(python-package))
