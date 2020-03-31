################################################################################
#
# python-oslo.serialization
#
################################################################################

PYTHON_OSLOSERIALIZATION_VERSION = 3.1.0
PYTHON_OSLOSERIALIZATION_SOURCE = oslo.serialization-$(PYTHON_OSLOSERIALIZATION_VERSION).tar.gz
PYTHON_OSLOSERIALIZATION_SITE = https://tarballs.opendev.org/openstack/oslo.serialization/
PYTHON_OSLOSERIALIZATION_LICENSE = Apache-2.0
PYTHON_OSLOSERIALIZATION_LICENSE_FILES = LICENSE
PYTHON_OSLOSERIALIZATION_SETUP_TYPE = setuptools

$(eval $(python-package))
