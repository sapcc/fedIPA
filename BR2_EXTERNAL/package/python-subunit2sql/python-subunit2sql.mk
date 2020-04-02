# vim: noexpandtab filetype=make
################################################################################
#
# python-subunit2sql
#
################################################################################

PYTHON_SUBUNIT2SQL_VERSION = 1.10.0
PYTHON_SUBUNIT2SQL_SOURCE = subunit2sql-1.10.0.tar.gz
PYTHON_SUBUNIT2SQL_SITE = https://files.pythonhosted.org/packages/4a/15/ea60dce3714edf9f57770178673b189e0829b9600c465ab4ba445c42ca61/
PYTHON_SUBUNIT2SQL_LICENSE = Apache-2.0
PYTHON_SUBUNIT2SQL_LICENSE_FILES = LICENSE
PYTHON_SUBUNIT2SQL_SETUP_TYPE = setuptools

$(eval $(python-package))
