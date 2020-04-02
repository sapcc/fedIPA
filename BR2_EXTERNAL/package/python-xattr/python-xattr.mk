# vim: noexpandtab filetype=make
################################################################################
#
# python-xattr
#
################################################################################

PYTHON_XATTR_VERSION = 0.9.7
PYTHON_XATTR_SOURCE = xattr-0.9.7.tar.gz
PYTHON_XATTR_SITE = https://files.pythonhosted.org/packages/c1/74/1ff659d6deb1d2d6babb9483171edfa330264ae2cbf005035bb7a77b07d2/
PYTHON_XATTR_LICENSE = MIT
PYTHON_XATTR_LICENSE_FILES = LICENSE
PYTHON_XATTR_SETUP_TYPE = setuptools

$(eval $(python-package))
