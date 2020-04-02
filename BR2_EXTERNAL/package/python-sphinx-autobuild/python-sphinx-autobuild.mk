# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinx-autobuild
#
################################################################################

PYTHON_SPHINX_AUTOBUILD_VERSION = 0.7.1
PYTHON_SPHINX_AUTOBUILD_SOURCE = sphinx-autobuild-0.7.1.tar.gz
PYTHON_SPHINX_AUTOBUILD_SITE = https://files.pythonhosted.org/packages/41/21/d7407dd6258ca4f4dfe6b3edbd076702042c02bfcdd82b6f71cb58a359d2/
PYTHON_SPHINX_AUTOBUILD_LICENSE = MIT
PYTHON_SPHINX_AUTOBUILD_LICENSE_FILES = LICENSE
PYTHON_SPHINX_AUTOBUILD_SETUP_TYPE = setuptools

$(eval $(python-package))
