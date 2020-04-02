# vim: noexpandtab filetype=make
################################################################################
#
# python-xmlschema
#
################################################################################

PYTHON_XMLSCHEMA_VERSION = 1.1.2
PYTHON_XMLSCHEMA_SOURCE = xmlschema-1.1.2.tar.gz
PYTHON_XMLSCHEMA_SITE = https://files.pythonhosted.org/packages/c4/d0/eb10d6d9a977a11b50ddcbff172b8832c4f51940d65363effec4a3f847b1/
PYTHON_XMLSCHEMA_LICENSE = MIT
PYTHON_XMLSCHEMA_LICENSE_FILES = LICENSE
PYTHON_XMLSCHEMA_SETUP_TYPE = setuptools

$(eval $(python-package))
