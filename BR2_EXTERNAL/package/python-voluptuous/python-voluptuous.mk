# vim: noexpandtab filetype=make
################################################################################
#
# python-voluptuous
#
################################################################################

PYTHON_VOLUPTUOUS_VERSION = 0.11.7
PYTHON_VOLUPTUOUS_SOURCE = voluptuous-0.11.7.tar.gz
PYTHON_VOLUPTUOUS_SITE = https://files.pythonhosted.org/packages/24/3b/fe531688c0d9e057fccc0bc9430c0a3d4b90e0d2f015326e659c2944e328/
PYTHON_VOLUPTUOUS_LICENSE = BSD-2-Clause
PYTHON_VOLUPTUOUS_LICENSE_FILES = LICENSE
PYTHON_VOLUPTUOUS_SETUP_TYPE = setuptools

$(eval $(python-package))
