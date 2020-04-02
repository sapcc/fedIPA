# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-flake8
#
################################################################################

PYTHON_PYTEST_FLAKE8_VERSION = 1.0.4
PYTHON_PYTEST_FLAKE8_SOURCE = pytest-flake8-1.0.4.tar.gz
PYTHON_PYTEST_FLAKE8_SITE = https://files.pythonhosted.org/packages/f0/b5/e1360bfe5b1218fe4f7a7fd6038de8d990e980c6f5d55c922e216de7131b/
PYTHON_PYTEST_FLAKE8_LICENSE = BSD-2-Clause
PYTHON_PYTEST_FLAKE8_LICENSE_FILES = LICENSE
PYTHON_PYTEST_FLAKE8_SETUP_TYPE = setuptools

$(eval $(python-package))
