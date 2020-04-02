# vim: noexpandtab filetype=make
################################################################################
#
# python-fields
#
################################################################################

PYTHON_FIELDS_VERSION = 5.0.0
PYTHON_FIELDS_SOURCE = fields-5.0.0.tar.gz
PYTHON_FIELDS_SITE = https://files.pythonhosted.org/packages/18/68/b922b5b0b2c1d99171c0ed9ad10296b55ee644eb1fa2fd5e45cafe56ae33/
PYTHON_FIELDS_LICENSE = BSD-2-Clause
PYTHON_FIELDS_LICENSE_FILES = LICENSE
PYTHON_FIELDS_SETUP_TYPE = setuptools

$(eval $(python-package))
