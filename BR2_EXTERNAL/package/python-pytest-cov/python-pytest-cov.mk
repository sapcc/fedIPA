# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-cov
#
################################################################################

PYTHON_PYTEST_COV_VERSION = 2.8.1
PYTHON_PYTEST_COV_SOURCE = pytest-cov-2.8.1.tar.gz
PYTHON_PYTEST_COV_SITE = https://files.pythonhosted.org/packages/13/8a/51f54b43a043c799bceca846594b9a310823a3e52df5ec27109cccba90f4/
PYTHON_PYTEST_COV_LICENSE = BSD-2-Clause
PYTHON_PYTEST_COV_LICENSE_FILES = LICENSE
PYTHON_PYTEST_COV_SETUP_TYPE = setuptools

$(eval $(python-package))
