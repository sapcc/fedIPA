# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-timeout
#
################################################################################

PYTHON_PYTEST_TIMEOUT_VERSION = 1.3.4
PYTHON_PYTEST_TIMEOUT_SOURCE = pytest-timeout-1.3.4.tar.gz
PYTHON_PYTEST_TIMEOUT_SITE = https://files.pythonhosted.org/packages/99/42/360b8451c5d1af0f259e6cdfa68713c93b6eb3542c68046f66d8bec34e6b/
PYTHON_PYTEST_TIMEOUT_LICENSE = MIT
PYTHON_PYTEST_TIMEOUT_LICENSE_FILES = LICENSE
PYTHON_PYTEST_TIMEOUT_SETUP_TYPE = setuptools

$(eval $(python-package))
