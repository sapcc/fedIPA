# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-devhelp
#
################################################################################

PYTHON_SPHINXCONTRIB_DEVHELP_VERSION = 1.0.2
PYTHON_SPHINXCONTRIB_DEVHELP_SOURCE = sphinxcontrib-devhelp-1.0.2.tar.gz
PYTHON_SPHINXCONTRIB_DEVHELP_SITE = https://files.pythonhosted.org/packages/98/33/dc28393f16385f722c893cb55539c641c9aaec8d1bc1c15b69ce0ac2dbb3/
PYTHON_SPHINXCONTRIB_DEVHELP_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_DEVHELP_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_DEVHELP_SETUP_TYPE = setuptools

$(eval $(python-package))
