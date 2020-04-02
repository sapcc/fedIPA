# vim: noexpandtab filetype=make
################################################################################
#
# python-xonsh
#
################################################################################

PYTHON_XONSH_VERSION = 0.9.15
PYTHON_XONSH_SOURCE = xonsh-0.9.15.tar.gz
PYTHON_XONSH_SITE = https://files.pythonhosted.org/packages/16/d9/ef56f7d86fc123ef6f58947744a5a6a703d792f623e7ea23063d6ea6a1e9/
PYTHON_XONSH_LICENSE = BSD
PYTHON_XONSH_LICENSE_FILES = LICENSE
PYTHON_XONSH_SETUP_TYPE = setuptools

$(eval $(python-package))
