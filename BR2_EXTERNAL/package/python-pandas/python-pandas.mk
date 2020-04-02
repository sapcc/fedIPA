# vim: noexpandtab filetype=make
################################################################################
#
# python-pandas
#
################################################################################

PYTHON_PANDAS_VERSION = 1.0.3
PYTHON_PANDAS_SOURCE = pandas-1.0.3.tar.gz
PYTHON_PANDAS_SITE = https://files.pythonhosted.org/packages/2f/79/f236ab1cfde94bac03d7b58f3f2ab0b1cc71d6a8bda3b25ce370a9fe4ab1/
PYTHON_PANDAS_LICENSE = BSD
PYTHON_PANDAS_LICENSE_FILES = LICENSE
PYTHON_PANDAS_SETUP_TYPE = setuptools

$(eval $(python-package))
