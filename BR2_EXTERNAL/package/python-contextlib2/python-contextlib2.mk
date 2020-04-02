# vim: noexpandtab filetype=make
################################################################################
#
# python-contextlib2
#
################################################################################

PYTHON_CONTEXTLIB2_VERSION = 0.6.0.post1
PYTHON_CONTEXTLIB2_SOURCE = contextlib2-0.6.0.post1.tar.gz
PYTHON_CONTEXTLIB2_SITE = https://files.pythonhosted.org/packages/02/54/669207eb72e3d8ae8b38aa1f0703ee87a0e9f88f30d3c0a47bebdb6de242/
PYTHON_CONTEXTLIB2_LICENSE = Python-2.0
PYTHON_CONTEXTLIB2_LICENSE_FILES = LICENSE
PYTHON_CONTEXTLIB2_SETUP_TYPE = setuptools

$(eval $(python-package))
