# vim: noexpandtab filetype=make
################################################################################
#
# python-pint
#
################################################################################

PYTHON_PINT_VERSION = 0.11
PYTHON_PINT_SOURCE = Pint-0.11.tar.gz
PYTHON_PINT_SITE = https://files.pythonhosted.org/packages/12/04/2533bd5bdfa000ff74329a2d75f63df72f1dda86c9e44c735ed739081e3b
PYTHON_PINT_LICENSE = BSD-2-Clause
PYTHON_PINT_LICENSE_FILES = LICENSE
PYTHON_PINT_SETUP_TYPE = setuptools

$(eval $(python-package))
