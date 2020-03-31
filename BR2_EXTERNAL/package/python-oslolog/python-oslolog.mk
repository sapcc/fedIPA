################################################################################
#
# python-oslo.log
#
################################################################################

PYTHON_OSLOLOG_VERSION = 4.1.0
PYTHON_OSLOLOG_SOURCE = oslo.log-$(PYTHON_OSLOLOG_VERSION).tar.gz
PYTHON_OSLOLOG_SITE = https://tarballs.opendev.org/openstack/oslo.log/
PYTHON_OSLOLOG_LICENSE = Apache-2.0
PYTHON_OSLOLOG_LICENSE_FILES = LICENSE
PYTHON_OSLOLOG_SETUP_TYPE = setuptools

$(eval $(python-package))
