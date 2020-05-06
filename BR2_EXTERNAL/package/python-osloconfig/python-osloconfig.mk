################################################################################
#
# python-oslo.config
#
################################################################################

PYTHON_OSLOCONFIG_VERSION = 8.0.1
PYTHON_OSLOCONFIG_SOURCE = oslo.config-$(PYTHON_OSLOCONFIG_VERSION).tar.gz
PYTHON_OSLOCONFIG_SITE = https://tarballs.opendev.org/openstack/oslo.config
PYTHON_OSLOCONFIG_LICENSE = Apache-2.0
PYTHON_OSLOCONFIG_LICENSE_FILES = LICENSE
PYTHON_OSLOCONFIG_SETUP_TYPE = setuptools

$(eval $(python-package))
