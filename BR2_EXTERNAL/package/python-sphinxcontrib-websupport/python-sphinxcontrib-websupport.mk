# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-websupport
#
################################################################################

PYTHON_SPHINXCONTRIB_WEBSUPPORT_VERSION = 1.2.1
PYTHON_SPHINXCONTRIB_WEBSUPPORT_SOURCE = sphinxcontrib-websupport-1.2.1.tar.gz
PYTHON_SPHINXCONTRIB_WEBSUPPORT_SITE = https://files.pythonhosted.org/packages/60/65/78e1514be951a3584df2e27b1b86e22609dd73312461e1af2afb9a53152c/
PYTHON_SPHINXCONTRIB_WEBSUPPORT_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_WEBSUPPORT_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_WEBSUPPORT_SETUP_TYPE = setuptools

$(eval $(python-package))
