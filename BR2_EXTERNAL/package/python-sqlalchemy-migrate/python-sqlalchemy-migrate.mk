# vim: noexpandtab filetype=make
################################################################################
#
# python-sqlalchemy-migrate
#
################################################################################

PYTHON_SQLALCHEMY_MIGRATE_VERSION = 0.13.0
PYTHON_SQLALCHEMY_MIGRATE_SOURCE = sqlalchemy-migrate-0.13.0.tar.gz
PYTHON_SQLALCHEMY_MIGRATE_SITE = https://files.pythonhosted.org/packages/36/bb/40f66b12b18fb03da76dcee31df75cca9e54b71d9d8a784bb95bfbadee2c/
PYTHON_SQLALCHEMY_MIGRATE_LICENSE = Apache-2.0
PYTHON_SQLALCHEMY_MIGRATE_LICENSE_FILES = LICENSE
PYTHON_SQLALCHEMY_MIGRATE_SETUP_TYPE = setuptools

$(eval $(python-package))
