# vim: noexpandtab filetype=make
################################################################################
#
# python-yappi
#
################################################################################

PYTHON_YAPPI_VERSION = 1.2.3
PYTHON_YAPPI_SOURCE = yappi-1.2.3.tar.gz
PYTHON_YAPPI_SITE = https://files.pythonhosted.org/packages/37/dc/86bbe1822cdc6dbf46c644061bd24217f6a0f056f00162a3697c9bea7575
PYTHON_YAPPI_LICENSE = MIT
PYTHON_YAPPI_LICENSE_FILES = LICENSE
PYTHON_YAPPI_SETUP_TYPE = setuptools

$(eval $(python-package))
