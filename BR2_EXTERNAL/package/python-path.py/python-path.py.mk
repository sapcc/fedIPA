# vim: noexpandtab filetype=make
################################################################################
#
# python-path.py
#
################################################################################

PYTHON_PATHPY_VERSION = 12.4.0
PYTHON_PATHPY_SOURCE = path.py-12.4.0.tar.gz
PYTHON_PATHPY_SITE = https://files.pythonhosted.org/packages/b9/22/7f03ee0463f6734dd9f6957e7ab15681c9d44a8ce7a13af569a8e3e8d863/
PYTHON_PATHPY_LICENSE = MIT
PYTHON_PATHPY_LICENSE_FILES = LICENSE
PYTHON_PATHPY_SETUP_TYPE = setuptools

$(eval $(python-package))
