# vim: noexpandtab filetype=make
################################################################################
#
# python-pytest-checkdocs
#
################################################################################

PYTHON_PYTEST_CHECKDOCS_VERSION = 1.2.3
PYTHON_PYTEST_CHECKDOCS_SOURCE = pytest-checkdocs-1.2.3.tar.gz
PYTHON_PYTEST_CHECKDOCS_SITE = https://files.pythonhosted.org/packages/1c/d2/c3a64cb45097e691aec852f795e3da90eddf40d3d7d241c9bf31cde9fe5e/
PYTHON_PYTEST_CHECKDOCS_LICENSE = MIT
PYTHON_PYTEST_CHECKDOCS_LICENSE_FILES = LICENSE
PYTHON_PYTEST_CHECKDOCS_SETUP_TYPE = setuptools

$(eval $(python-package))
