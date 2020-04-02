# vim: noexpandtab filetype=make
################################################################################
#
# python-greenlet
#
################################################################################

PYTHON_GREENLET_VERSION = 0.4.15
PYTHON_GREENLET_SOURCE = greenlet-0.4.15.tar.gz
PYTHON_GREENLET_SITE = https://files.pythonhosted.org/packages/f8/e8/b30ae23b45f69aa3f024b46064c0ac8e5fcb4f22ace0dca8d6f9c8bbe5e7/
PYTHON_GREENLET_LICENSE = MIT
PYTHON_GREENLET_LICENSE_FILES = LICENSE
PYTHON_GREENLET_SETUP_TYPE = setuptools

$(eval $(python-package))
