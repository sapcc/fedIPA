# vim: noexpandtab filetype=make
################################################################################
#
# python-tox
#
################################################################################

PYTHON_TOX_VERSION = 3.14.6
PYTHON_TOX_SOURCE = tox-3.14.6.tar.gz
PYTHON_TOX_SITE = https://files.pythonhosted.org/packages/c0/7f/46ff5bae3cef87400719e65de5f6b488699687a2e8a3a02f91c89c775aeb/
PYTHON_TOX_LICENSE = MIT
PYTHON_TOX_LICENSE_FILES = LICENSE
PYTHON_TOX_SETUP_TYPE = setuptools

$(eval $(python-package))
