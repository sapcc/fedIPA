# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-randomly
#
################################################################################

PYTHON_PYTEST_RANDOMLY_VERSION = 3.2.1
PYTHON_PYTEST_RANDOMLY_SOURCE = pytest-randomly-3.2.1.tar.gz
PYTHON_PYTEST_RANDOMLY_SITE = https://files.pythonhosted.org/packages/c4/58/1b0d6aa2a1f6ed0b8868a079a387444094ed8019cd64f342451d2e577779/
PYTHON_PYTEST_RANDOMLY_LICENSE = BSD-2-Clause
PYTHON_PYTEST_RANDOMLY_LICENSE_FILES = LICENSE
PYTHON_PYTEST_RANDOMLY_SETUP_TYPE = setuptools

$(eval $(python-package))
