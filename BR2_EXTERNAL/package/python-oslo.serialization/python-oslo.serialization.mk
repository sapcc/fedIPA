# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.serialization
#
################################################################################

PYTHON_OSLO_SERIALIZATION_VERSION = 3.1.0
PYTHON_OSLO_SERIALIZATION_SOURCE = oslo.serialization-3.1.0.tar.gz
PYTHON_OSLO_SERIALIZATION_SITE = https://files.pythonhosted.org/packages/8c/58/0b0833c9c945afe2c685f53e60df937bf2058292a30d91ca1131a851e780
PYTHON_OSLO_SERIALIZATION_LICENSE = Apache-2.0
PYTHON_OSLO_SERIALIZATION_LICENSE_FILES = LICENSE
PYTHON_OSLO_SERIALIZATION_SETUP_TYPE = setuptools

$(eval $(python-package))
