# vim: noexpandtab filetype=make
################################################################################
#
# python-fixtures
#
################################################################################

PYTHON_FIXTURES_VERSION = 3.0.0
PYTHON_FIXTURES_SOURCE = fixtures-3.0.0.tar.gz
PYTHON_FIXTURES_SITE = https://files.pythonhosted.org/packages/84/be/94ecbc3f2487bd14aa8b44852f498086219b7cc0c8250ee65a03e2c63119/
PYTHON_FIXTURES_LICENSE = BSD-2-Clause
PYTHON_FIXTURES_LICENSE_FILES = LICENSE
PYTHON_FIXTURES_SETUP_TYPE = setuptools

$(eval $(python-package))
