# vim: noexpandtab filetype=make
################################################################################
#
# python-importlib-metadata
#
################################################################################

PYTHON_IMPORTLIB_METADATA_VERSION = 1.6.0
PYTHON_IMPORTLIB_METADATA_SOURCE = importlib_metadata-1.6.0.tar.gz
PYTHON_IMPORTLIB_METADATA_SITE = https://files.pythonhosted.org/packages/b4/1b/baab42e3cd64c9d5caac25a9d6c054f8324cdc38975a44d600569f1f7158/
PYTHON_IMPORTLIB_METADATA_LICENSE = Apache-2.0
PYTHON_IMPORTLIB_METADATA_LICENSE_FILES = LICENSE
PYTHON_IMPORTLIB_METADATA_SETUP_TYPE = setuptools

$(eval $(python-package))
