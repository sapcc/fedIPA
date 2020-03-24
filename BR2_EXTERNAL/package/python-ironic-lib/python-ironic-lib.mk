################################################################################
#
# python-ironic-lib
#
################################################################################

PYTHON_IRONIC_LIB_VERSION = 4.1.0
PYTHON_IRONIC_LIB_SOURCE = ironic-python-agent-$(PYTHON_IRONIC_LIB_VERSION).tar.gz
PYTHON_IRONIC_LIB_SITE = https://tarballs.opendev.org/openstack/ironic-lib/
PYTHON_IRONIC_LIB_LICENSE = Apache-2.0
PYTHON_IRONIC_LIB_LICENSE_FILES = LICENSE
PYTHON_IRONIC_LIB_SETUP_TYPE = setuptools

$(eval $(python-package))
