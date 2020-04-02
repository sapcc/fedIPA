# vim: noexpandtab filetype=make
################################################################################
#
# python-hunter
#
################################################################################

PYTHON_HUNTER_VERSION = 3.1.3
PYTHON_HUNTER_SOURCE = hunter-3.1.3.tar.gz
PYTHON_HUNTER_SITE = https://files.pythonhosted.org/packages/d5/f5/ef2469823e14aa86adf12a1816dcc0b8a83dee4f2c9cb9c2d24e40f941fc/
PYTHON_HUNTER_LICENSE = BSD-2-Clause
PYTHON_HUNTER_LICENSE_FILES = LICENSE
PYTHON_HUNTER_SETUP_TYPE = setuptools

$(eval $(python-package))
