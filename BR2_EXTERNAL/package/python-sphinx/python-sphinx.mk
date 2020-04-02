# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinx
#
################################################################################

PYTHON_SPHINX_VERSION = 2.4.4
PYTHON_SPHINX_SOURCE = Sphinx-2.4.4.tar.gz
PYTHON_SPHINX_SITE = https://files.pythonhosted.org/packages/d5/75/e2a582a0ce014dce99cab62f251c179712cb6c4377705deb7c9b474e4f35/
PYTHON_SPHINX_LICENSE = BSD-2-Clause
PYTHON_SPHINX_LICENSE_FILES = LICENSE
PYTHON_SPHINX_SETUP_TYPE = setuptools

$(eval $(python-package))
