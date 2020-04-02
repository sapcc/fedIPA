# vim: noexpandtab filetype=make
################################################################################
#
# python-proselint
#
################################################################################

PYTHON_PROSELINT_VERSION = 0.10.2
PYTHON_PROSELINT_SOURCE = proselint-0.10.2.tar.gz
PYTHON_PROSELINT_SITE = https://files.pythonhosted.org/packages/42/ff/8e7ad0108b8faffdf2ec7d170b4a8a3c9bc91f5077debf5381ef14702588/
PYTHON_PROSELINT_LICENSE = BSD
PYTHON_PROSELINT_LICENSE_FILES = LICENSE
PYTHON_PROSELINT_SETUP_TYPE = setuptools

$(eval $(python-package))
