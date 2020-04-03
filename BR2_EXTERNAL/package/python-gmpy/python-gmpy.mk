# vim: noexpandtab filetype=make
################################################################################
#
# python-gmpy
#
################################################################################

PYTHON_GMPY_VERSION = 1.17
PYTHON_GMPY_SOURCE = gmpy-1.17.zip
PYTHON_GMPY_SITE = https://files.pythonhosted.org/packages/26/37/2184c13cee81e1dbeaebbb13570195247e73ab2138a3db0c9d2c5347e372
PYTHON_GMPY_LICENSE = UNKNOWN
PYTHON_GMPY_LICENSE_FILES = LICENSE
PYTHON_GMPY_SETUP_TYPE = setuptools

$(eval $(python-package))
