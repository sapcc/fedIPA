################################################################################
#
# python-wrapt
#
################################################################################

PYTHON_WRAPT_VERSION = 1.12.1
PYTHON_WRAPT_SOURCE = wrapt-$(PYTHON_WRAPT_VERSION).tar.gz
PYTHON_WRAPT_SITE = https://files.pythonhosted.org/packages/82/f7/e43cefbe88c5fd371f4cf0cf5eb3feccd07515af9fd6cf7dbf1d1793a797/
PYTHON_WRAPT_LICENSE = Apache-2.0
PYTHON_WRAPT_LICENSE_FILES = LICENSE
PYTHON_WRAPT_SETUP_TYPE = setuptools

$(eval $(python-package))
