# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.utils
#
################################################################################

PYTHON_OSLOUTILS_VERSION = 4.1.0
PYTHON_OSLOUTILS_SOURCE = oslo.utils-4.1.0.tar.gz
PYTHON_OSLOUTILS_SITE = https://files.pythonhosted.org/packages/74/7c/7147a8eb74ab76ef6e4a436e3e8fe8db92f73312246bec573a251014170a/
PYTHON_OSLOUTILS_LICENSE = Apache-2.0
PYTHON_OSLOUTILS_LICENSE_FILES = LICENSE
PYTHON_OSLOUTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
