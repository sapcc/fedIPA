# vim: noexpandtab filetype=make
################################################################################
#
# python-uncertainties
#
################################################################################

PYTHON_UNCERTAINTIES_VERSION = 3.1.2
PYTHON_UNCERTAINTIES_SOURCE = uncertainties-3.1.2.tar.gz
PYTHON_UNCERTAINTIES_SITE = https://files.pythonhosted.org/packages/2a/c2/babbe5b16141859dd799ed31c03987100a7b6d0ca7c0ed4429c96ce60fdf
PYTHON_UNCERTAINTIES_LICENSE = BSD-2-Clause
PYTHON_UNCERTAINTIES_LICENSE_FILES = LICENSE
PYTHON_UNCERTAINTIES_SETUP_TYPE = setuptools

$(eval $(python-package))
