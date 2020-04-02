# vim: noexpandtab filetype=make
################################################################################
#
# python-gnureadline
#
################################################################################

PYTHON_GNUREADLINE_VERSION = 8.0.0
PYTHON_GNUREADLINE_SOURCE = gnureadline-8.0.0.tar.gz
PYTHON_GNUREADLINE_SITE = https://files.pythonhosted.org/packages/b2/e9/0f3c62faa8e471541d77068f440b4f5df8f396a3760fccf1b88697e282a8/
PYTHON_GNUREADLINE_LICENSE = GPL-3.0
PYTHON_GNUREADLINE_LICENSE_FILES = LICENSE
PYTHON_GNUREADLINE_SETUP_TYPE = setuptools

$(eval $(python-package))
