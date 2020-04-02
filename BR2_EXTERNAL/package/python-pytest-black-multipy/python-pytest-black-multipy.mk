# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-black-multipy
#
################################################################################

PYTHON_PYTEST_BLACK_MULTIPY_VERSION = 1.0.0
PYTHON_PYTEST_BLACK_MULTIPY_SOURCE = pytest-black-multipy-1.0.0.tar.gz
PYTHON_PYTEST_BLACK_MULTIPY_SITE = https://files.pythonhosted.org/packages/25/26/29b1c4086638d318164fa7187c9a7475aea6a215bba3007c3a490194bd2e/
PYTHON_PYTEST_BLACK_MULTIPY_LICENSE = MIT
PYTHON_PYTEST_BLACK_MULTIPY_LICENSE_FILES = LICENSE
PYTHON_PYTEST_BLACK_MULTIPY_SETUP_TYPE = setuptools

$(eval $(python-package))
