# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.log
#
################################################################################

PYTHON_OSLOLOG_VERSION = 4.1.0
PYTHON_OSLOLOG_SOURCE = oslo.log-4.1.0.tar.gz
PYTHON_OSLOLOG_SITE = https://files.pythonhosted.org/packages/b8/40/817e8386bd32ae595911d18be2916afa55f33ed0b2c61c45e3a417a4573d/
PYTHON_OSLOLOG_LICENSE = Apache-2.0
PYTHON_OSLOLOG_LICENSE_FILES = LICENSE
PYTHON_OSLOLOG_SETUP_TYPE = setuptools

$(eval $(python-package))
