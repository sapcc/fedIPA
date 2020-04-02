# vim: noexpandtab filetype=make
################################################################################
#
# python-execnet
#
################################################################################

PYTHON_EXECNET_VERSION = 1.7.1
PYTHON_EXECNET_SOURCE = execnet-1.7.1.tar.gz
PYTHON_EXECNET_SITE = https://files.pythonhosted.org/packages/5a/61/1b50e0891d9b934154637fdaac88c68a82fd8dc5648dfb04e65937fc6234/
PYTHON_EXECNET_LICENSE = MIT
PYTHON_EXECNET_LICENSE_FILES = LICENSE
PYTHON_EXECNET_SETUP_TYPE = setuptools

$(eval $(python-package))
