# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-mock
#
################################################################################

PYTHON_PYTEST_MOCK_VERSION = 3.0.0
PYTHON_PYTEST_MOCK_SOURCE = pytest-mock-3.0.0.tar.gz
PYTHON_PYTEST_MOCK_SITE = https://files.pythonhosted.org/packages/ea/15/673dfe054f9a2e53ab14538f0f500d857ec9f56811b65d794574b8761cb3/
PYTHON_PYTEST_MOCK_LICENSE = MIT
PYTHON_PYTEST_MOCK_LICENSE_FILES = LICENSE
PYTHON_PYTEST_MOCK_SETUP_TYPE = setuptools

$(eval $(python-package))
