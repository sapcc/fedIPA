# vim: noexpandtab filetype=make
################################################################################
#
# python-cfgv
#
################################################################################

PYTHON_CFGV_VERSION = 3.1.0
PYTHON_CFGV_SOURCE = cfgv-3.1.0.tar.gz
PYTHON_CFGV_SITE = https://files.pythonhosted.org/packages/88/e8/159f95e454d6c35d2fc238ca056497672b8d93c3dab568a9b13e7a602331/
PYTHON_CFGV_LICENSE = MIT
PYTHON_CFGV_LICENSE_FILES = LICENSE
PYTHON_CFGV_SETUP_TYPE = setuptools

$(eval $(python-package))
