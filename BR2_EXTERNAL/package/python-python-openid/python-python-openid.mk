# vim: noexpandtab filetype=make
################################################################################
#
# python-python-openid
#
################################################################################

PYTHON_PYTHON_OPENID_VERSION = 2.2.5
PYTHON_PYTHON_OPENID_SOURCE = python-openid-2.2.5.zip
PYTHON_PYTHON_OPENID_SITE = https://files.pythonhosted.org/packages/aa/85/0bac9096d208f04c9de9d49f3a4e27fec8bfd56ee841c185f5cf420a24d2/
PYTHON_PYTHON_OPENID_LICENSE = Apache-2.0
PYTHON_PYTHON_OPENID_LICENSE_FILES = LICENSE
PYTHON_PYTHON_OPENID_SETUP_TYPE = setuptools

$(eval $(python-package))
