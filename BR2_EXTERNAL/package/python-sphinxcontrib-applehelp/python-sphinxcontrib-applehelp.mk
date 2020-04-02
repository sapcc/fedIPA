# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-applehelp
#
################################################################################

PYTHON_SPHINXCONTRIB_APPLEHELP_VERSION = 1.0.2
PYTHON_SPHINXCONTRIB_APPLEHELP_SOURCE = sphinxcontrib-applehelp-1.0.2.tar.gz
PYTHON_SPHINXCONTRIB_APPLEHELP_SITE = https://files.pythonhosted.org/packages/9f/01/ad9d4ebbceddbed9979ab4a89ddb78c9760e74e6757b1880f1b2760e8295/
PYTHON_SPHINXCONTRIB_APPLEHELP_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_APPLEHELP_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_APPLEHELP_SETUP_TYPE = setuptools

$(eval $(python-package))
