# vim: noexpandtab filetype=make
################################################################################
#
# python-importlib-resources
#
################################################################################

PYTHON_IMPORTLIB_RESOURCES_VERSION = 1.4.0
PYTHON_IMPORTLIB_RESOURCES_SOURCE = importlib_resources-1.4.0.tar.gz
PYTHON_IMPORTLIB_RESOURCES_SITE = https://files.pythonhosted.org/packages/50/ba/5130f094984227628a10162f6251f3fcec688dbc31035fec6d2462d8d286/
PYTHON_IMPORTLIB_RESOURCES_LICENSE = Apache-2.0
PYTHON_IMPORTLIB_RESOURCES_LICENSE_FILES = LICENSE
PYTHON_IMPORTLIB_RESOURCES_SETUP_TYPE = setuptools

$(eval $(python-package))
