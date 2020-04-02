# vim: noexpandtab filetype=make
################################################################################
#
# python-doc8
#
################################################################################

PYTHON_DOC8_VERSION = 0.8.0
PYTHON_DOC8_SOURCE = doc8-0.8.0.tar.gz
PYTHON_DOC8_SITE = https://files.pythonhosted.org/packages/7b/c6/938edbe4a33f4ba04dae14a3814605b8fd970e2a6d8c32282be0c06517d2/
PYTHON_DOC8_LICENSE = Apache-2.0
PYTHON_DOC8_LICENSE_FILES = LICENSE
PYTHON_DOC8_SETUP_TYPE = setuptools

$(eval $(python-package))
