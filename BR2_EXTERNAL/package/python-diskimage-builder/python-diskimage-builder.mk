################################################################################
#
# python-diskimage-builder
#
################################################################################

PYTHON_DISKIMAGE_BUILDER_VERSION = 2.35.0
PYTHON_DISKIMAGE_BUILDER_SOURCE = diskimage-builder-$(PYTHON_DISKIMAGE_BUILDER_VERSION).tar.gz
PYTHON_DISKIMAGE_BUILDER_SITE = https://tarballs.opendev.org/openstack/diskimage-builder/
PYTHON_DISKIMAGE_BUILDER_LICENSE = Apache-2.0
PYTHON_DISKIMAGE_BUILDER_LICENSE_FILES = LICENSE
PYTHON_DISKIMAGE_BUILDER_SETUP_TYPE = setuptools

$(eval $(python-package))
