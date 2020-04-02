# vim: noexpandtab filetype=make
################################################################################
#
# python-pastedeploy
#
################################################################################

PYTHON_PASTEDEPLOY_VERSION = 2.1.0
PYTHON_PASTEDEPLOY_SOURCE = PasteDeploy-2.1.0.tar.gz
PYTHON_PASTEDEPLOY_SITE = https://files.pythonhosted.org/packages/c4/e9/972a1c20318b3ae9edcab11a6cef64308fbae5d0d45ab52c6f8b2b8f35b8/
PYTHON_PASTEDEPLOY_LICENSE = MIT
PYTHON_PASTEDEPLOY_LICENSE_FILES = LICENSE
PYTHON_PASTEDEPLOY_SETUP_TYPE = setuptools

$(eval $(python-package))
