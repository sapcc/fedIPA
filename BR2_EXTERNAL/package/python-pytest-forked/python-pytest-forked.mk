# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-forked
#
################################################################################

PYTHON_PYTEST_FORKED_VERSION = 1.1.3
PYTHON_PYTEST_FORKED_SOURCE = pytest-forked-1.1.3.tar.gz
PYTHON_PYTEST_FORKED_SITE = https://files.pythonhosted.org/packages/43/b4/d0efa1748880e24aaaf8343825138ed5460b8e260e84ac73ef4415e1d1d4/
PYTHON_PYTEST_FORKED_LICENSE = MIT
PYTHON_PYTEST_FORKED_LICENSE_FILES = LICENSE
PYTHON_PYTEST_FORKED_SETUP_TYPE = setuptools

$(eval $(python-package))
