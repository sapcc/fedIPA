# vim: noexpandtab filetype=make
################################################################################
#
# python-ddt
#
################################################################################

PYTHON_DDT_VERSION = 1.3.1
PYTHON_DDT_SOURCE = ddt-1.3.1.tar.gz
PYTHON_DDT_SITE = https://files.pythonhosted.org/packages/06/55/ac51824e03637bd037707a47d63aa4d55bc5044eb8c7f928435b3e9a4928/
PYTHON_DDT_LICENSE = MIT
PYTHON_DDT_LICENSE_FILES = LICENSE
PYTHON_DDT_SETUP_TYPE = setuptools

$(eval $(python-package))
