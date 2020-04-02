# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-env
#
################################################################################

PYTHON_PYTEST_ENV_VERSION = 0.6.2
PYTHON_PYTEST_ENV_SOURCE = pytest-env-0.6.2.tar.gz
PYTHON_PYTEST_ENV_SITE = https://files.pythonhosted.org/packages/f9/6e/31efb8dc1d17052c12f39262223e94038bfcc4cc7a124235630a6d50f166/
PYTHON_PYTEST_ENV_LICENSE = MIT
PYTHON_PYTEST_ENV_LICENSE_FILES = LICENSE
PYTHON_PYTEST_ENV_SETUP_TYPE = setuptools

$(eval $(python-package))
