# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-black
#
################################################################################

PYTHON_PYTEST_BLACK_VERSION = 0.3.8
PYTHON_PYTEST_BLACK_SOURCE = pytest-black-0.3.8.tar.gz
PYTHON_PYTEST_BLACK_SITE = https://files.pythonhosted.org/packages/3d/e9/2f3605f3922c1650cd43433be704a58773ee9baeb78731cc896822c2cc57/
PYTHON_PYTEST_BLACK_LICENSE = MIT
PYTHON_PYTEST_BLACK_LICENSE_FILES = LICENSE
PYTHON_PYTEST_BLACK_SETUP_TYPE = setuptools

$(eval $(python-package))
