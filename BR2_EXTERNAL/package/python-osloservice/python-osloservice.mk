################################################################################
#
# python-oslo.service
#
################################################################################

PYTHON_OSLOSERVICE_VERSION = 2.1.0
PYTHON_OSLOSERVICE_SOURCE = oslo.service-$(PYTHON_OSLOSERVICE_VERSION).tar.gz
PYTHON_OSLOSERVICE_SITE = https://tarballs.opendev.org/openstack/oslo.service/
PYTHON_OSLOSERVICE_LICENSE = Apache-2.0
PYTHON_OSLOSERVICE_LICENSE_FILES = LICENSE
PYTHON_OSLOSERVICE_SETUP_TYPE = setuptools

$(eval $(python-package))
