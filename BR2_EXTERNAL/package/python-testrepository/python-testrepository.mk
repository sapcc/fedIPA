# vim: noexpandtab filetype=make
################################################################################
#
# python-testrepository
#
################################################################################

PYTHON_TESTREPOSITORY_VERSION = 0.0.20
PYTHON_TESTREPOSITORY_SOURCE = testrepository-0.0.20.tar.gz
PYTHON_TESTREPOSITORY_SITE = https://files.pythonhosted.org/packages/0c/85/f495b58b2b0ac907def07385219e9747b75840fa01280f228546a4a5ad7f/
PYTHON_TESTREPOSITORY_LICENSE = BSD-2-Clause
PYTHON_TESTREPOSITORY_LICENSE_FILES = LICENSE
PYTHON_TESTREPOSITORY_SETUP_TYPE = setuptools

$(eval $(python-package))
