# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.serialization
#
################################################################################

PYTHON_OSLOSERIALIZATION_VERSION = 3.1.0
PYTHON_OSLOSERIALIZATION_SOURCE = oslo.serialization-3.1.0.tar.gz
PYTHON_OSLOSERIALIZATION_SITE = https://files.pythonhosted.org/packages/8c/58/0b0833c9c945afe2c685f53e60df937bf2058292a30d91ca1131a851e780/
PYTHON_OSLOSERIALIZATION_LICENSE = Apache-2.0
PYTHON_OSLOSERIALIZATION_LICENSE_FILES = LICENSE
PYTHON_OSLOSERIALIZATION_SETUP_TYPE = setuptools

$(eval $(python-package))
