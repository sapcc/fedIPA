# vim: noexpandtab filetype=make
################################################################################
#
# python-mypy-extensions
#
################################################################################

PYTHON_MYPY_EXTENSIONS_VERSION = 0.4.3
PYTHON_MYPY_EXTENSIONS_SOURCE = mypy_extensions-0.4.3.tar.gz
PYTHON_MYPY_EXTENSIONS_SITE = https://files.pythonhosted.org/packages/63/60/0582ce2eaced55f65a4406fc97beba256de4b7a95a0034c6576458c6519f/
PYTHON_MYPY_EXTENSIONS_LICENSE = MIT
PYTHON_MYPY_EXTENSIONS_LICENSE_FILES = LICENSE
PYTHON_MYPY_EXTENSIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
