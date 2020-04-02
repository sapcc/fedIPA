# vim: noexpandtab filetype=make
################################################################################
#
# python-pyperclip
#
################################################################################

PYTHON_PYPERCLIP_VERSION = 1.8.0
PYTHON_PYPERCLIP_SOURCE = pyperclip-1.8.0.tar.gz
PYTHON_PYPERCLIP_SITE = https://files.pythonhosted.org/packages/f6/5b/55866e1cde0f86f5eec59dab5de8a66628cb0d53da74b8dbc15ad8dabda3/
PYTHON_PYPERCLIP_LICENSE = BSD-2-Clause
PYTHON_PYPERCLIP_LICENSE_FILES = LICENSE
PYTHON_PYPERCLIP_SETUP_TYPE = setuptools

$(eval $(python-package))
