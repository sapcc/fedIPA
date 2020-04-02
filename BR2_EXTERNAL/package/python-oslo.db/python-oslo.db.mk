# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.db
#
################################################################################

PYTHON_OSLODB_VERSION = 8.0.0
PYTHON_OSLODB_SOURCE = oslo.db-8.0.0.tar.gz
PYTHON_OSLODB_SITE = https://files.pythonhosted.org/packages/c5/bd/098ff36b92d9cc0f8bde947da34387a9879b1307098196541efddf743146/
PYTHON_OSLODB_LICENSE = Apache-2.0
PYTHON_OSLODB_LICENSE_FILES = LICENSE
PYTHON_OSLODB_SETUP_TYPE = setuptools

$(eval $(python-package))
