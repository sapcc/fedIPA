# vim: noexpandtab filetype=make
################################################################################
#
# python-codecov
#
################################################################################

PYTHON_CODECOV_VERSION = 2.0.22
PYTHON_CODECOV_SOURCE = codecov-2.0.22.tar.gz
PYTHON_CODECOV_SITE = https://files.pythonhosted.org/packages/77/9c/a6f159b43834a7a87f7f13e27b2452ac72fa216c9841865ae8ce94a17e58/
PYTHON_CODECOV_LICENSE = Apache-2.0
PYTHON_CODECOV_LICENSE_FILES = LICENSE
PYTHON_CODECOV_SETUP_TYPE = setuptools

$(eval $(python-package))
