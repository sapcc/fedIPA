# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-mpl
#
################################################################################

PYTHON_PYTEST_MPL_VERSION = 0.11
PYTHON_PYTEST_MPL_SOURCE = pytest-mpl-0.11.tar.gz
PYTHON_PYTEST_MPL_SITE = https://files.pythonhosted.org/packages/ae/e9/82536e05e60d27786d0256982279882765aebaa017812b42cc21cc33591c/
PYTHON_PYTEST_MPL_LICENSE = BSD-2-Clause
PYTHON_PYTEST_MPL_LICENSE_FILES = LICENSE
PYTHON_PYTEST_MPL_SETUP_TYPE = setuptools

$(eval $(python-package))
