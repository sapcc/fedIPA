# vim: noexpandtab filetype=make
################################################################################
#
# python-flake8
#
################################################################################

PYTHON_FLAKE8_VERSION = 3.7.9
PYTHON_FLAKE8_SOURCE = flake8-3.7.9.tar.gz
PYTHON_FLAKE8_SITE = https://files.pythonhosted.org/packages/a5/bb/7e707d8001aca96f15f684b02176ecb0575786f041293f090b44ea04f2d0/
PYTHON_FLAKE8_LICENSE = MIT
PYTHON_FLAKE8_LICENSE_FILES = LICENSE
PYTHON_FLAKE8_SETUP_TYPE = setuptools

$(eval $(python-package))
