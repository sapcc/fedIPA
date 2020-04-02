# vim: noexpandtab filetype=make
################################################################################
#
# python-distlib
#
################################################################################

PYTHON_DISTLIB_VERSION = 0.3.0
PYTHON_DISTLIB_SOURCE = distlib-0.3.0.zip
PYTHON_DISTLIB_SITE = https://files.pythonhosted.org/packages/7d/29/694a3a4d7c0e1aef76092e9167fbe372e0f7da055f5dcf4e1313ec21d96a/
PYTHON_DISTLIB_LICENSE = Python-2.0
PYTHON_DISTLIB_LICENSE_FILES = LICENSE
PYTHON_DISTLIB_SETUP_TYPE = setuptools

$(eval $(python-package))
