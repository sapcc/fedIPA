################################################################################
#
# python-hacking
#
################################################################################

PYTHON_HACKING_VERSION = 3.0.0
PYTHON_HACKING_SOURCE = hacking-$(PYTHON_HACKING_VERSION).tar.gz
PYTHON_HACKING_SITE = https://tarballs.opendev.org/openstack/hacking/
PYTHON_HACKING_LICENSE = Apache-2.0
PYTHON_HACKING_LICENSE_FILES = LICENSE
PYTHON_HACKING_SETUP_TYPE = setuptools

$(eval $(python-package))
