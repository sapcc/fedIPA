################################################################################
#
# python-oslo.i18n
#
################################################################################

PYTHON_OSLOI18N_VERSION = 4.0.0
PYTHON_OSLOI18N_SOURCE = oslo.i18n-$(PYTHON_OSLOI18N_VERSION).tar.gz
PYTHON_OSLOI18N_SITE = https://tarballs.opendev.org/openstack/oslo.i18n/
PYTHON_OSLOI18N_LICENSE = Apache-2.0
PYTHON_OSLOI18N_LICENSE_FILES = LICENSE
PYTHON_OSLOI18N_SETUP_TYPE = setuptools

$(eval $(python-package))
