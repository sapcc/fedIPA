# vim: noexpandtab filetype=make
################################################################################
#
# python-oslotest
#
################################################################################

PYTHON_OSLOTEST_VERSION = 4.1.0
PYTHON_OSLOTEST_SOURCE = oslotest-4.1.0.tar.gz
PYTHON_OSLOTEST_SITE = https://files.pythonhosted.org/packages/c4/5e/d1dff770695d41186f11a6fcca6d85fb1287345f3402adcfb8e45cc760ae/
PYTHON_OSLOTEST_LICENSE = Apache-2.0
PYTHON_OSLOTEST_LICENSE_FILES = LICENSE
PYTHON_OSLOTEST_SETUP_TYPE = setuptools

$(eval $(python-package))
