# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.log
#
################################################################################

PYTHON_OSLO_LOG_VERSION = 4.1.0
PYTHON_OSLO_LOG_SOURCE = oslo.log-4.1.0.tar.gz
PYTHON_OSLO_LOG_SITE = https://files.pythonhosted.org/packages/b8/40/817e8386bd32ae595911d18be2916afa55f33ed0b2c61c45e3a417a4573d
PYTHON_OSLO_LOG_LICENSE = Apache-2.0
PYTHON_OSLO_LOG_LICENSE_FILES = LICENSE
PYTHON_OSLO_LOG_SETUP_TYPE = setuptools

$(eval $(python-package))
