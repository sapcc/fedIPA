# vim: noexpandtab filetype=make
################################################################################
#
# python-elementpath
#
################################################################################

PYTHON_ELEMENTPATH_VERSION = 1.4.3
PYTHON_ELEMENTPATH_SOURCE = elementpath-1.4.3.tar.gz
PYTHON_ELEMENTPATH_SITE = https://files.pythonhosted.org/packages/12/f9/f9960222d5274944b01391749e55e4dcdf28d8f0c108b64ac931ceff6fdb/
PYTHON_ELEMENTPATH_LICENSE = MIT
PYTHON_ELEMENTPATH_LICENSE_FILES = LICENSE
PYTHON_ELEMENTPATH_SETUP_TYPE = setuptools

$(eval $(python-package))
