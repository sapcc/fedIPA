# vim: noexpandtab filetype=make
################################################################################
#
# python-imagesize
#
################################################################################

PYTHON_IMAGESIZE_VERSION = 1.2.0
PYTHON_IMAGESIZE_SOURCE = imagesize-1.2.0.tar.gz
PYTHON_IMAGESIZE_SITE = https://files.pythonhosted.org/packages/e4/9f/0452b459c8ba97e07c3cd2bd243783936a992006cf4cd1353c314a927028/
PYTHON_IMAGESIZE_LICENSE = MIT
PYTHON_IMAGESIZE_LICENSE_FILES = LICENSE
PYTHON_IMAGESIZE_SETUP_TYPE = setuptools

$(eval $(python-package))
