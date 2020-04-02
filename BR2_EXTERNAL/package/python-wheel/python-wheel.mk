# vim: noexpandtab filetype=make
################################################################################
#
# python-wheel
#
################################################################################

PYTHON_WHEEL_VERSION = 0.34.2
PYTHON_WHEEL_SOURCE = wheel-0.34.2.tar.gz
PYTHON_WHEEL_SITE = https://files.pythonhosted.org/packages/75/28/521c6dc7fef23a68368efefdcd682f5b3d1d58c2b90b06dc1d0b805b51ae/
PYTHON_WHEEL_LICENSE = MIT
PYTHON_WHEEL_LICENSE_FILES = LICENSE
PYTHON_WHEEL_SETUP_TYPE = setuptools

$(eval $(python-package))
