# vim: noexpandtab filetype=make
################################################################################
#
# python-paste
#
################################################################################

PYTHON_PASTE_VERSION = 3.4.0
PYTHON_PASTE_SOURCE = Paste-3.4.0.tar.gz
PYTHON_PASTE_SITE = https://files.pythonhosted.org/packages/79/4a/45821b71dd40000507549afd1491546afad8279c0a87527c88776a794158
PYTHON_PASTE_LICENSE = MIT
PYTHON_PASTE_LICENSE_FILES = LICENSE
PYTHON_PASTE_SETUP_TYPE = setuptools

$(eval $(python-package))
