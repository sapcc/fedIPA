# vim: noexpandtab filetype=make
################################################################################
#
# python-alembic
#
################################################################################

PYTHON_ALEMBIC_VERSION = 1.4.2
PYTHON_ALEMBIC_SOURCE = alembic-1.4.2.tar.gz
PYTHON_ALEMBIC_SITE = https://files.pythonhosted.org/packages/60/1e/cabc75a189de0fbb2841d0975243e59bde8b7822bacbb95008ac6fe9ad47/
PYTHON_ALEMBIC_LICENSE = MIT
PYTHON_ALEMBIC_LICENSE_FILES = LICENSE
PYTHON_ALEMBIC_SETUP_TYPE = setuptools

$(eval $(python-package))
