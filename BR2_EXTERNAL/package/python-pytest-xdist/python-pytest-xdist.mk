# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-xdist
#
################################################################################

PYTHON_PYTEST_XDIST_VERSION = 1.31.0
PYTHON_PYTEST_XDIST_SOURCE = pytest-xdist-1.31.0.tar.gz
PYTHON_PYTEST_XDIST_SITE = https://files.pythonhosted.org/packages/0d/61/6075788a09ad48c7fd6fd2b076bae66daf7189d07282aefdf626149e76f1/
PYTHON_PYTEST_XDIST_LICENSE = MIT
PYTHON_PYTEST_XDIST_LICENSE_FILES = LICENSE
PYTHON_PYTEST_XDIST_SETUP_TYPE = setuptools

$(eval $(python-package))
