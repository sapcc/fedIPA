# vim: noexpandtab filetype=make
################################################################################
#
# python-configparser
#
################################################################################

PYTHON_CONFIGPARSER_VERSION = 5.0.0
PYTHON_CONFIGPARSER_SOURCE = configparser-5.0.0.tar.gz
PYTHON_CONFIGPARSER_SITE = https://files.pythonhosted.org/packages/e5/7c/d4ccbcde76b4eea8cbd73b67b88c72578e8b4944d1270021596e80b13deb/
PYTHON_CONFIGPARSER_LICENSE = MIT
PYTHON_CONFIGPARSER_LICENSE_FILES = LICENSE
PYTHON_CONFIGPARSER_SETUP_TYPE = setuptools

$(eval $(python-package))
