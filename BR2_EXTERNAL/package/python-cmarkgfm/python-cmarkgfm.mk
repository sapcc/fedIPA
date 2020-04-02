# vim: noexpandtab filetype=make
################################################################################
#
# python-cmarkgfm
#
################################################################################

PYTHON_CMARKGFM_VERSION = 0.4.2
PYTHON_CMARKGFM_SOURCE = cmarkgfm-0.4.2.tar.gz
PYTHON_CMARKGFM_SITE = https://files.pythonhosted.org/packages/e2/a3/4021fbc17c5afe7f307d14eba0d6899a8e66b351ab65649b1c89c50a836d/
PYTHON_CMARKGFM_LICENSE = MIT
PYTHON_CMARKGFM_LICENSE_FILES = LICENSE
PYTHON_CMARKGFM_SETUP_TYPE = setuptools

$(eval $(python-package))
