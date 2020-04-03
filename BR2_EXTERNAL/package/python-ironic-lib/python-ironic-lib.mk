# vim: noexpandtab filetype=make
################################################################################
#
# python-ironic-lib
#
################################################################################

PYTHON_IRONIC_LIB_VERSION = 4.2.0
PYTHON_IRONIC_LIB_SOURCE = ironic-lib-4.2.0.tar.gz
PYTHON_IRONIC_LIB_SITE = https://files.pythonhosted.org/packages/12/5c/56a725a2f312ff46d11d4b8edad25cb97ad1148293170e7d1ee6c019c93e
PYTHON_IRONIC_LIB_LICENSE = Apache-2.0
PYTHON_IRONIC_LIB_LICENSE_FILES = LICENSE
PYTHON_IRONIC_LIB_SETUP_TYPE = setuptools

$(eval $(python-package))
