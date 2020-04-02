# vim: noexpandtab filetype=make
################################################################################
#
# python-testscenarios
#
################################################################################

PYTHON_TESTSCENARIOS_VERSION = 0.5.0
PYTHON_TESTSCENARIOS_SOURCE = testscenarios-0.5.0.tar.gz
PYTHON_TESTSCENARIOS_SITE = https://files.pythonhosted.org/packages/f0/de/b0b5b98c0f38fd7086d082c47fcb455eedd39a044abe7c595f5f40cd6eed/
PYTHON_TESTSCENARIOS_LICENSE = BSD-2-Clause
PYTHON_TESTSCENARIOS_LICENSE_FILES = LICENSE
PYTHON_TESTSCENARIOS_SETUP_TYPE = setuptools

$(eval $(python-package))
