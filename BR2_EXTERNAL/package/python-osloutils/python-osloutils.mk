################################################################################
#
# python-oslo.utils
#
################################################################################

PYTHON_OSLOUTILS_VERSION = 4.1.0
PYTHON_OSLOUTILS_SOURCE = oslo.utils-$(PYTHON_OSLOUTILS_VERSION).tar.gz
PYTHON_OSLOUTILS_SITE = https://tarballs.opendev.org/openstack/oslo.utils/
PYTHON_OSLOUTILS_LICENSE = Apache-2.0
PYTHON_OSLOUTILS_LICENSE_FILES = LICENSE
PYTHON_OSLOUTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
