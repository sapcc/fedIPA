# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-htmlhelp
#
################################################################################

PYTHON_SPHINXCONTRIB_HTMLHELP_VERSION = 1.0.3
PYTHON_SPHINXCONTRIB_HTMLHELP_SOURCE = sphinxcontrib-htmlhelp-1.0.3.tar.gz
PYTHON_SPHINXCONTRIB_HTMLHELP_SITE = https://files.pythonhosted.org/packages/c9/2e/a7a5fef38327b7f643ed13646321d19903a2f54b0a05868e4bc34d729e1f/
PYTHON_SPHINXCONTRIB_HTMLHELP_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_HTMLHELP_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_HTMLHELP_SETUP_TYPE = setuptools

$(eval $(python-package))
