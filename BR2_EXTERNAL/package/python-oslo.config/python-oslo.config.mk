# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.config
#
################################################################################

PYTHON_OSLOCONFIG_VERSION = 8.0.1
PYTHON_OSLOCONFIG_SOURCE = oslo.config-8.0.1.tar.gz
PYTHON_OSLOCONFIG_SITE = https://files.pythonhosted.org/packages/02/ee/b1869abea5f83f8da696cf1f31f1b4a1f69199003c2638ae2b06b147ff23/
PYTHON_OSLOCONFIG_LICENSE = Apache-2.0
PYTHON_OSLOCONFIG_LICENSE_FILES = LICENSE
PYTHON_OSLOCONFIG_SETUP_TYPE = setuptools

$(eval $(python-package))
