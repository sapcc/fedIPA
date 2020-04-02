# vim: noexpandtab filetype=make
################################################################################
#
# python-python-subunit
#
################################################################################

PYTHON_PYTHON_SUBUNIT_VERSION = 1.4.0
PYTHON_PYTHON_SUBUNIT_SOURCE = python-subunit-1.4.0.tar.gz
PYTHON_PYTHON_SUBUNIT_SITE = https://files.pythonhosted.org/packages/e4/57/c9d1130411945fee7de701366f238a6568d4e3a5ef8dda94cbdc63937c8d/
PYTHON_PYTHON_SUBUNIT_LICENSE = Apache-2.0 or BSD
PYTHON_PYTHON_SUBUNIT_LICENSE_FILES = LICENSE
PYTHON_PYTHON_SUBUNIT_SETUP_TYPE = setuptools

$(eval $(python-package))
