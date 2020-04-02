# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-asyncio
#
################################################################################

PYTHON_PYTEST_ASYNCIO_VERSION = 0.10.0
PYTHON_PYTEST_ASYNCIO_SOURCE = pytest-asyncio-0.10.0.tar.gz
PYTHON_PYTEST_ASYNCIO_SITE = https://files.pythonhosted.org/packages/dc/20/a35b6fbb9b97859ed2203ad474e4dd8591ef369b7387f6ef08270a0a3e84/
PYTHON_PYTEST_ASYNCIO_LICENSE = Apache-2.0
PYTHON_PYTEST_ASYNCIO_LICENSE_FILES = LICENSE
PYTHON_PYTEST_ASYNCIO_SETUP_TYPE = setuptools

$(eval $(python-package))
