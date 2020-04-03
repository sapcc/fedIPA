# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.utils
#
################################################################################

PYTHON_OSLO_UTILS_VERSION = 4.1.0
PYTHON_OSLO_UTILS_SOURCE = oslo.utils-4.1.0.tar.gz
PYTHON_OSLO_UTILS_SITE = https://files.pythonhosted.org/packages/74/7c/7147a8eb74ab76ef6e4a436e3e8fe8db92f73312246bec573a251014170a
PYTHON_OSLO_UTILS_LICENSE = Apache-2.0
PYTHON_OSLO_UTILS_LICENSE_FILES = LICENSE
PYTHON_OSLO_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
