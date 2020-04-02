# vim: noexpandtab filetype=make
################################################################################
#
# python-daiquiri
#
################################################################################

PYTHON_DAIQUIRI_VERSION = 2.1.1
PYTHON_DAIQUIRI_SOURCE = daiquiri-2.1.1.tar.gz
PYTHON_DAIQUIRI_SITE = https://files.pythonhosted.org/packages/08/52/8e7e643b0c40772f79cf7af367331c386fd9b34b5065a38b34e440f344ef/
PYTHON_DAIQUIRI_LICENSE = Apache-2.0
PYTHON_DAIQUIRI_LICENSE_FILES = LICENSE
PYTHON_DAIQUIRI_SETUP_TYPE = setuptools

$(eval $(python-package))
