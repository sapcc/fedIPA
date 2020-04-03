# vim: noexpandtab filetype=make
################################################################################
#
# python-pycryptodome
#
################################################################################

PYTHON_PYCRYPTODOME_VERSION = 3.9.7
PYTHON_PYCRYPTODOME_SOURCE = pycryptodome-3.9.7.tar.gz
PYTHON_PYCRYPTODOME_SITE = https://files.pythonhosted.org/packages/69/2a/298b2689bee8e88c502c7e85ba1c9f07c7e182ea91c705c449f693056c9f
PYTHON_PYCRYPTODOME_LICENSE = BSD, Public Domain, Apache
PYTHON_PYCRYPTODOME_LICENSE_FILES = LICENSE
PYTHON_PYCRYPTODOME_SETUP_TYPE = setuptools

$(eval $(python-package))
