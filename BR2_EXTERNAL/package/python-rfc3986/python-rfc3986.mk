# vim: noexpandtab filetype=make
################################################################################
#
# python-rfc3986
#
################################################################################

PYTHON_RFC3986_VERSION = 1.3.2
PYTHON_RFC3986_SOURCE = rfc3986-1.3.2.tar.gz
PYTHON_RFC3986_SITE = https://files.pythonhosted.org/packages/34/c9/bcba83f13f628e947e23a0e54e18d0a6f13e5d03ca4ec04def0105c81bfc/
PYTHON_RFC3986_LICENSE = Apache-2.0
PYTHON_RFC3986_LICENSE_FILES = LICENSE
PYTHON_RFC3986_SETUP_TYPE = setuptools

$(eval $(python-package))
