# vim: noexpandtab filetype=make
################################################################################
#
# python-jaraco.packaging
#
################################################################################

PYTHON_JARACOPACKAGING_VERSION = 8.1.0
PYTHON_JARACOPACKAGING_SOURCE = jaraco.packaging-8.1.0.tar.gz
PYTHON_JARACOPACKAGING_SITE = https://files.pythonhosted.org/packages/4f/4a/26b1b91079e189ec4e8bb151a0f500607265e9b2e6e1fc0b3e8105dee95e/
PYTHON_JARACOPACKAGING_LICENSE = MIT
PYTHON_JARACOPACKAGING_LICENSE_FILES = LICENSE
PYTHON_JARACOPACKAGING_SETUP_TYPE = setuptools

$(eval $(python-package))
