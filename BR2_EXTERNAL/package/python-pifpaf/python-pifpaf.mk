# vim: noexpandtab filetype=make
################################################################################
#
# python-pifpaf
#
################################################################################

PYTHON_PIFPAF_VERSION = 2.4.0
PYTHON_PIFPAF_SOURCE = pifpaf-2.4.0.tar.gz
PYTHON_PIFPAF_SITE = https://files.pythonhosted.org/packages/70/41/ab95e10cec10e0e6e31e4a49290e719dfb357118d2d07ef61ed29a82e47c/
PYTHON_PIFPAF_LICENSE = Apache-2.0
PYTHON_PIFPAF_LICENSE_FILES = LICENSE
PYTHON_PIFPAF_SETUP_TYPE = setuptools

$(eval $(python-package))
