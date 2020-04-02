# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest
#
################################################################################

PYTHON_PYTEST_VERSION = 5.4.1
PYTHON_PYTEST_SOURCE = pytest-5.4.1.tar.gz
PYTHON_PYTEST_SITE = https://files.pythonhosted.org/packages/6d/4e/572aed20422dee7fa2bd27995b2a53a32de90c1826e5531c9df6d3ea77ed/
PYTHON_PYTEST_LICENSE = MIT
PYTHON_PYTEST_LICENSE_FILES = LICENSE
PYTHON_PYTEST_SETUP_TYPE = setuptools

$(eval $(python-package))
