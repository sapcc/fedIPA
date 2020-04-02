# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.service
#
################################################################################

PYTHON_OSLOSERVICE_VERSION = 2.1.0
PYTHON_OSLOSERVICE_SOURCE = oslo.service-2.1.0.tar.gz
PYTHON_OSLOSERVICE_SITE = https://files.pythonhosted.org/packages/75/88/fa6c563de5cd0c66bf2d62f484f6fbf98eb4ddc11af9a4f033b36309af20/
PYTHON_OSLOSERVICE_LICENSE = Apache-2.0
PYTHON_OSLOSERVICE_LICENSE_FILES = LICENSE
PYTHON_OSLOSERVICE_SETUP_TYPE = setuptools

$(eval $(python-package))
