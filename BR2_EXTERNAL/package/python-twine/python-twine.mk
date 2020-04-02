# vim: noexpandtab filetype=make
################################################################################
#
# python-twine
#
################################################################################

PYTHON_TWINE_VERSION = 3.1.1
PYTHON_TWINE_SOURCE = twine-3.1.1.tar.gz
PYTHON_TWINE_SITE = https://files.pythonhosted.org/packages/7e/2f/e2a91a8ab97e8c9830ce297132631aef5dcd599f076123d1ebb26f1941b6/
PYTHON_TWINE_LICENSE = Apache-2.0
PYTHON_TWINE_LICENSE_FILES = LICENSE
PYTHON_TWINE_SETUP_TYPE = setuptools

$(eval $(python-package))
