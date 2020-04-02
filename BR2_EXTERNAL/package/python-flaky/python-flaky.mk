# vim: noexpandtab filetype=make
################################################################################
#
# python-flaky
#
################################################################################

PYTHON_FLAKY_VERSION = 3.6.1
PYTHON_FLAKY_SOURCE = flaky-3.6.1.tar.gz
PYTHON_FLAKY_SITE = https://files.pythonhosted.org/packages/25/ac/c8ac54ad18f2ff587e97ba1041719160d0c194b1c4140f87b5f805ae2c7f/
PYTHON_FLAKY_LICENSE = Apache-2.0
PYTHON_FLAKY_LICENSE_FILES = LICENSE
PYTHON_FLAKY_SETUP_TYPE = setuptools

$(eval $(python-package))
