# vim: noexpandtab filetype=make
################################################################################
#
# python-openstackdocstheme
#
################################################################################

PYTHON_OPENSTACKDOCSTHEME_VERSION = 2.0.1
PYTHON_OPENSTACKDOCSTHEME_SOURCE = openstackdocstheme-2.0.1.tar.gz
PYTHON_OPENSTACKDOCSTHEME_SITE = https://files.pythonhosted.org/packages/bf/da/a55cc4aee4c81c9d4bc6613fe9604ae1ba0da4f2069ac88fc44f14c1e6f3/
PYTHON_OPENSTACKDOCSTHEME_LICENSE = Apache-2.0
PYTHON_OPENSTACKDOCSTHEME_LICENSE_FILES = LICENSE
PYTHON_OPENSTACKDOCSTHEME_SETUP_TYPE = setuptools

$(eval $(python-package))
