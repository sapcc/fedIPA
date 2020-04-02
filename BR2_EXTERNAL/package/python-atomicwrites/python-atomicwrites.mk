# vim: noexpandtab filetype=make
################################################################################
#
# python-atomicwrites
#
################################################################################

PYTHON_ATOMICWRITES_VERSION = 1.3.0
PYTHON_ATOMICWRITES_SOURCE = atomicwrites-1.3.0.tar.gz
PYTHON_ATOMICWRITES_SITE = https://files.pythonhosted.org/packages/ec/0f/cd484ac8820fed363b374af30049adc8fd13065720fd4f4c6be8a2309da7/
PYTHON_ATOMICWRITES_LICENSE = MIT
PYTHON_ATOMICWRITES_LICENSE_FILES = LICENSE
PYTHON_ATOMICWRITES_SETUP_TYPE = setuptools

$(eval $(python-package))
