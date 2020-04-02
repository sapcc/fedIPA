# vim: noexpandtab filetype=make
################################################################################
#
# python-inflect
#
################################################################################

PYTHON_INFLECT_VERSION = 4.1.0
PYTHON_INFLECT_SOURCE = inflect-4.1.0.tar.gz
PYTHON_INFLECT_SITE = https://files.pythonhosted.org/packages/18/29/2a0292362ea78760f95584ffd41e75b3d001d501c4627ba321d180a4fc0c/
PYTHON_INFLECT_LICENSE = MIT
PYTHON_INFLECT_LICENSE_FILES = LICENSE
PYTHON_INFLECT_SETUP_TYPE = setuptools

$(eval $(python-package))
