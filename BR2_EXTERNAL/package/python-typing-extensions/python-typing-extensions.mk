# vim: noexpandtab filetype=make
################################################################################
#
# python-typing-extensions
#
################################################################################

PYTHON_TYPING_EXTENSIONS_VERSION = 3.7.4.1
PYTHON_TYPING_EXTENSIONS_SOURCE = typing_extensions-3.7.4.1.tar.gz
PYTHON_TYPING_EXTENSIONS_SITE = https://files.pythonhosted.org/packages/e7/dd/f1713bc6638cc3a6a23735eff6ee09393b44b96176d3296693ada272a80b/
PYTHON_TYPING_EXTENSIONS_LICENSE = Python-2.0
PYTHON_TYPING_EXTENSIONS_LICENSE_FILES = LICENSE
PYTHON_TYPING_EXTENSIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
