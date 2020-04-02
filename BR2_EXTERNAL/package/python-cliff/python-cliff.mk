# vim: noexpandtab filetype=make
################################################################################
#
# python-cliff
#
################################################################################

PYTHON_CLIFF_VERSION = 3.1.0
PYTHON_CLIFF_SOURCE = cliff-3.1.0.tar.gz
PYTHON_CLIFF_SITE = https://files.pythonhosted.org/packages/21/4e/0edfaf74a40cffe66de8ae8b9704420696ed37238dd57ce0935c9a341077/
PYTHON_CLIFF_LICENSE = Apache-2.0
PYTHON_CLIFF_LICENSE_FILES = LICENSE
PYTHON_CLIFF_SETUP_TYPE = setuptools

$(eval $(python-package))
