# vim: noexpandtab filetype=make
################################################################################
#
# python-hacking
#
################################################################################

PYTHON_HACKING_VERSION = 3.0.0
PYTHON_HACKING_SOURCE = hacking-3.0.0.tar.gz
PYTHON_HACKING_SITE = https://files.pythonhosted.org/packages/f8/33/5323e2df5cb4baadfd2e7f5af1375ae2d0d85a21b13453088b44091192ca/
PYTHON_HACKING_LICENSE = Apache-2.0
PYTHON_HACKING_LICENSE_FILES = LICENSE
PYTHON_HACKING_SETUP_TYPE = setuptools

$(eval $(python-package))
