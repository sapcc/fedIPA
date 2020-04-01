################################################################################
#
# python-debtcollector
#
################################################################################

PYTHON_DEBTCOLLECTOR_VERSION = 2.0.0
PYTHON_DEBTCOLLECTOR_SOURCE = debtcollector-$(PYTHON_DEBTCOLLECTOR_VERSION).tar.gz
PYTHON_DEBTCOLLECTOR_SITE = https://tarballs.opendev.org/openstack/debtcollector/
PYTHON_DEBTCOLLECTOR_LICENSE = Apache-2.0
PYTHON_DEBTCOLLECTOR_LICENSE_FILES = LICENSE
PYTHON_DEBTCOLLECTOR_SETUP_TYPE = setuptools

$(eval $(python-package))
