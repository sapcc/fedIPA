# vim: noexpandtab filetype=make
################################################################################
#
# python-identify
#
################################################################################

PYTHON_IDENTIFY_VERSION = 1.4.13
PYTHON_IDENTIFY_SOURCE = identify-1.4.13.tar.gz
PYTHON_IDENTIFY_SITE = https://files.pythonhosted.org/packages/bd/51/0a921da9ed57886daf6a7f385c4ec2671f0f0cae3a2b49bcdbfe0477c0a2/
PYTHON_IDENTIFY_LICENSE = MIT
PYTHON_IDENTIFY_LICENSE_FILES = LICENSE
PYTHON_IDENTIFY_SETUP_TYPE = setuptools

$(eval $(python-package))
