# vim: noexpandtab filetype=make
################################################################################
#
# python-os-testr
#
################################################################################

PYTHON_OS_TESTR_VERSION = 2.0.0
PYTHON_OS_TESTR_SOURCE = os-testr-2.0.0.tar.gz
PYTHON_OS_TESTR_SITE = https://files.pythonhosted.org/packages/ba/32/d57cba22c9e8f1a8783ee2691580faf4fd4505222bac30140a9bec229467/
PYTHON_OS_TESTR_LICENSE = Apache-2.0
PYTHON_OS_TESTR_LICENSE_FILES = LICENSE
PYTHON_OS_TESTR_SETUP_TYPE = setuptools

$(eval $(python-package))
