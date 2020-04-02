# vim: noexpandtab filetype=make
################################################################################
#
# python-dulwich
#
################################################################################

PYTHON_DULWICH_VERSION = 0.19.15
PYTHON_DULWICH_SOURCE = dulwich-0.19.15.tar.gz
PYTHON_DULWICH_SITE = https://files.pythonhosted.org/packages/61/9e/975cd95e7b15f71ff29307a02fc61d232d07cc3b66519ca43aceff0cde10/
PYTHON_DULWICH_LICENSE = Apache-2.0
PYTHON_DULWICH_LICENSE_FILES = LICENSE
PYTHON_DULWICH_SETUP_TYPE = setuptools

$(eval $(python-package))
