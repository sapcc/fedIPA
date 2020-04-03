# vim: noexpandtab filetype=make
################################################################################
#
# python-debtcollector
#
################################################################################

PYTHON_DEBTCOLLECTOR_VERSION = 2.0.0
PYTHON_DEBTCOLLECTOR_SOURCE = debtcollector-2.0.0.tar.gz
PYTHON_DEBTCOLLECTOR_SITE = https://files.pythonhosted.org/packages/42/15/962f327d34be733baafa79319c406e0e0f4e22cbee8c0fb9ca7f3542789f
PYTHON_DEBTCOLLECTOR_LICENSE = Apache-2.0
PYTHON_DEBTCOLLECTOR_LICENSE_FILES = LICENSE
PYTHON_DEBTCOLLECTOR_SETUP_TYPE = setuptools

$(eval $(python-package))
