# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.service
#
################################################################################

PYTHON_OSLO_SERVICE_VERSION = 2.1.0
PYTHON_OSLO_SERVICE_SOURCE = oslo.service-2.1.0.tar.gz
PYTHON_OSLO_SERVICE_SITE = https://files.pythonhosted.org/packages/75/88/fa6c563de5cd0c66bf2d62f484f6fbf98eb4ddc11af9a4f033b36309af20
PYTHON_OSLO_SERVICE_LICENSE = Apache-2.0
PYTHON_OSLO_SERVICE_LICENSE_FILES = LICENSE
PYTHON_OSLO_SERVICE_SETUP_TYPE = setuptools

$(eval $(python-package))
