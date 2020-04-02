# vim: noexpandtab filetype=make
################################################################################
#
# python-dpcontracts
#
################################################################################

PYTHON_DPCONTRACTS_VERSION = 0.6.0
PYTHON_DPCONTRACTS_SOURCE = dpcontracts-0.6.0.tar.gz
PYTHON_DPCONTRACTS_SITE = https://files.pythonhosted.org/packages/aa/e2/cad64673297a634a623808045d416ed85bad1c470ccc99e0cdc7b13b9774/
PYTHON_DPCONTRACTS_LICENSE = LGPL-3.0+
PYTHON_DPCONTRACTS_LICENSE_FILES = LICENSE
PYTHON_DPCONTRACTS_SETUP_TYPE = setuptools

$(eval $(python-package))
