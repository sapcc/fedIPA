# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.i18n
#
################################################################################

PYTHON_OSLOI18N_VERSION = 4.0.0
PYTHON_OSLOI18N_SOURCE = oslo.i18n-4.0.0.tar.gz
PYTHON_OSLOI18N_SITE = https://files.pythonhosted.org/packages/6c/0b/41d4a4da46c5fbd56411d83094440fc72503289f2ec06a8fdafc844eacc8/
PYTHON_OSLOI18N_LICENSE = Apache-2.0
PYTHON_OSLOI18N_LICENSE_FILES = LICENSE
PYTHON_OSLOI18N_SETUP_TYPE = setuptools

$(eval $(python-package))
