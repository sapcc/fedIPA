# vim: noexpandtab filetype=make
################################################################################
#
# python-pyreadline
#
################################################################################

PYTHON_PYREADLINE_VERSION = 2.1
PYTHON_PYREADLINE_SOURCE = pyreadline-2.1.zip
PYTHON_PYREADLINE_SITE = https://files.pythonhosted.org/packages/bc/7c/d724ef1ec3ab2125f38a1d53285745445ec4a8f19b9bb0761b4064316679/
PYTHON_PYREADLINE_LICENSE = BSD-2-Clause
PYTHON_PYREADLINE_LICENSE_FILES = LICENSE
PYTHON_PYREADLINE_SETUP_TYPE = setuptools

$(eval $(python-package))
