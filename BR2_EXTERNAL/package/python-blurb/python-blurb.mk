# vim: noexpandtab filetype=make
################################################################################
#
# python-blurb
#
################################################################################

PYTHON_BLURB_VERSION = 1.0.7
PYTHON_BLURB_SOURCE = blurb-1.0.7.tar.gz
PYTHON_BLURB_SITE = https://files.pythonhosted.org/packages/29/4f/268f9aa095cbcf53253c665fd0f5103f22dccf246fe317ab9c5c481b38f5/
PYTHON_BLURB_LICENSE = BSD-2-Clause
PYTHON_BLURB_LICENSE_FILES = LICENSE
PYTHON_BLURB_SETUP_TYPE = setuptools

$(eval $(python-package))
