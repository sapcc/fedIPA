# vim: noexpandtab filetype=make
################################################################################
#
# python-brotlipy
#
################################################################################

PYTHON_BROTLIPY_VERSION = 0.7.0
PYTHON_BROTLIPY_SOURCE = brotlipy-0.7.0.tar.gz
PYTHON_BROTLIPY_SITE = https://files.pythonhosted.org/packages/d9/91/bc79b88590e4f662bd40a55a2b6beb0f15da4726732efec5aa5a3763d856
PYTHON_BROTLIPY_LICENSE = MIT
PYTHON_BROTLIPY_LICENSE_FILES = LICENSE
PYTHON_BROTLIPY_SETUP_TYPE = setuptools

$(eval $(python-package))
