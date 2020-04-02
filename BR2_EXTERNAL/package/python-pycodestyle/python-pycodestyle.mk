# vim: noexpandtab filetype=make
################################################################################
#
# python-pycodestyle
#
################################################################################

PYTHON_PYCODESTYLE_VERSION = 2.5.0
PYTHON_PYCODESTYLE_SOURCE = pycodestyle-2.5.0.tar.gz
PYTHON_PYCODESTYLE_SITE = https://files.pythonhosted.org/packages/1c/d1/41294da5915f4cae7f4b388cea6c2cd0d6cd53039788635f6875dfe8c72f/
PYTHON_PYCODESTYLE_LICENSE = MIT
PYTHON_PYCODESTYLE_LICENSE_FILES = LICENSE
PYTHON_PYCODESTYLE_SETUP_TYPE = setuptools

$(eval $(python-package))
