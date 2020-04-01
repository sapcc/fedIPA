################################################################################
#
# python-pbr
#
################################################################################

PYTHON_PBR_VERSION = 5.4.4
PYTHON_PBR_SOURCE = pbr-$(PYTHON_PBR_VERSION).tar.gz
PYTHON_PBR_SITE = https://tarballs.opendev.org/openstack/pbr/
PYTHON_PBR_LICENSE = Apache-2.0
PYTHON_PBR_LICENSE_FILES = LICENSE
PYTHON_PBR_SETUP_TYPE = setuptools

$(eval $(python-package))
