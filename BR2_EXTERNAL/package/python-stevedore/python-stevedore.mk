################################################################################
#
# python-stevedore
#
################################################################################

PYTHON_STEVEDORE_VERSION = 1.32.0
PYTHON_STEVEDORE_SOURCE = stevedore-$(PYTHON_STEVEDORE_VERSION).tar.gz
PYTHON_STEVEDORE_SITE = https://tarballs.opendev.org/openstack/stevedore/
PYTHON_STEVEDORE_LICENSE = Apache-2.0
PYTHON_STEVEDORE_LICENSE_FILES = LICENSE
PYTHON_STEVEDORE_SETUP_TYPE = setuptools

$(eval $(python-package))
