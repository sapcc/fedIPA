# vim: noexpandtab filetype=make
################################################################################
#
# python-argcomplete
#
################################################################################

PYTHON_ARGCOMPLETE_VERSION = 1.11.1
PYTHON_ARGCOMPLETE_SOURCE = argcomplete-1.11.1.tar.gz
PYTHON_ARGCOMPLETE_SITE = https://files.pythonhosted.org/packages/43/61/345856864a72ccc004bea5f74183c58bfd6675f9eab931ff9ce21a8fe06b/
PYTHON_ARGCOMPLETE_LICENSE = Apache-2.0
PYTHON_ARGCOMPLETE_LICENSE_FILES = LICENSE
PYTHON_ARGCOMPLETE_SETUP_TYPE = setuptools

$(eval $(python-package))
