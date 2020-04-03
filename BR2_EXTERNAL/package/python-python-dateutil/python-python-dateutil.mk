# vim: noexpandtab filetype=make
################################################################################
#
# python-python-dateutil
#
################################################################################

PYTHON_PYTHON_DATEUTIL_VERSION = 2.8.1
PYTHON_PYTHON_DATEUTIL_SOURCE = python-dateutil-2.8.1.tar.gz
PYTHON_PYTHON_DATEUTIL_SITE = https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0
PYTHON_PYTHON_DATEUTIL_LICENSE = BSD-2-Clause
PYTHON_PYTHON_DATEUTIL_LICENSE_FILES = LICENSE
PYTHON_PYTHON_DATEUTIL_SETUP_TYPE = setuptools

$(eval $(python-package))
