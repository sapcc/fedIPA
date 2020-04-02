# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-qthelp
#
################################################################################

PYTHON_SPHINXCONTRIB_QTHELP_VERSION = 1.0.3
PYTHON_SPHINXCONTRIB_QTHELP_SOURCE = sphinxcontrib-qthelp-1.0.3.tar.gz
PYTHON_SPHINXCONTRIB_QTHELP_SITE = https://files.pythonhosted.org/packages/b1/8e/c4846e59f38a5f2b4a0e3b27af38f2fcf904d4bfd82095bf92de0b114ebd/
PYTHON_SPHINXCONTRIB_QTHELP_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_QTHELP_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_QTHELP_SETUP_TYPE = setuptools

$(eval $(python-package))
