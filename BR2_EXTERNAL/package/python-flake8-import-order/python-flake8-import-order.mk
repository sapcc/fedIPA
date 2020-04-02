# vim: noexpandtab filetype=make
################################################################################
#
# python-flake8-import-order
#
################################################################################

PYTHON_FLAKE8_IMPORT_ORDER_VERSION = 0.18.1
PYTHON_FLAKE8_IMPORT_ORDER_SOURCE = flake8-import-order-0.18.1.tar.gz
PYTHON_FLAKE8_IMPORT_ORDER_SITE = https://files.pythonhosted.org/packages/81/47/5f2cea0164e77dd40726d83b4c865c2a701f60b73cb6af7b539cd42aafb4/
PYTHON_FLAKE8_IMPORT_ORDER_LICENSE = MIT
PYTHON_FLAKE8_IMPORT_ORDER_LICENSE_FILES = LICENSE
PYTHON_FLAKE8_IMPORT_ORDER_SETUP_TYPE = setuptools

$(eval $(python-package))
