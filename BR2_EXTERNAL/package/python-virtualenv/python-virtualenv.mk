# vim: noexpandtab filetype=make
################################################################################
#
# python-virtualenv
#
################################################################################

PYTHON_VIRTUALENV_VERSION = 20.0.15
PYTHON_VIRTUALENV_SOURCE = virtualenv-20.0.15.tar.gz
PYTHON_VIRTUALENV_SITE = https://files.pythonhosted.org/packages/98/30/13ec6895dd1e2aaef956cc587e19c88fca00b2be52bb29cc4b09995aded5/
PYTHON_VIRTUALENV_LICENSE = MIT
PYTHON_VIRTUALENV_LICENSE_FILES = LICENSE
PYTHON_VIRTUALENV_SETUP_TYPE = setuptools

$(eval $(python-package))
