# vim: noexpandtab filetype=make
################################################################################
#
# python-testtools
#
################################################################################

PYTHON_TESTTOOLS_VERSION = 2.4.0
PYTHON_TESTTOOLS_SOURCE = testtools-2.4.0.tar.gz
PYTHON_TESTTOOLS_SITE = https://files.pythonhosted.org/packages/11/9a/26b2f192024c4abcf702750ce7f4eb4cad305d8aad9482d9b5f3760118c7/
PYTHON_TESTTOOLS_LICENSE = MIT
PYTHON_TESTTOOLS_LICENSE_FILES = LICENSE
PYTHON_TESTTOOLS_SETUP_TYPE = setuptools

$(eval $(python-package))
