# vim: noexpandtab filetype=make
################################################################################
#
# python-prettytable
#
################################################################################

PYTHON_PRETTYTABLE_VERSION = 0.7.2
PYTHON_PRETTYTABLE_SOURCE = prettytable-0.7.2.zip
PYTHON_PRETTYTABLE_SITE = https://files.pythonhosted.org/packages/23/4a/9785a37ed6425918af69909af715ced0fa261e518601a0c70309a708fd08/
PYTHON_PRETTYTABLE_LICENSE = BSD-2-Clause
PYTHON_PRETTYTABLE_LICENSE_FILES = LICENSE
PYTHON_PRETTYTABLE_SETUP_TYPE = setuptools

$(eval $(python-package))
