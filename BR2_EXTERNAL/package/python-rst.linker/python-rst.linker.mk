# vim: noexpandtab filetype=make
################################################################################
#
# python-rst.linker
#
################################################################################

PYTHON_RSTLINKER_VERSION = 2.0.0
PYTHON_RSTLINKER_SOURCE = rst.linker-2.0.0.tar.gz
PYTHON_RSTLINKER_SITE = https://files.pythonhosted.org/packages/21/9d/d19ce4e31c06cf92f402929efe1403e6a8f9541c7e6496a213f632e351de/
PYTHON_RSTLINKER_LICENSE = MIT
PYTHON_RSTLINKER_LICENSE_FILES = LICENSE
PYTHON_RSTLINKER_SETUP_TYPE = setuptools

$(eval $(python-package))
