# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.concurrency
#
################################################################################

PYTHON_OSLO_CONCURRENCY_VERSION = 4.0.1
PYTHON_OSLO_CONCURRENCY_SOURCE = oslo.concurrency-4.0.1.tar.gz
PYTHON_OSLO_CONCURRENCY_SITE = https://files.pythonhosted.org/packages/56/07/0bc78587f65be8244bc6048f885767458f32daa989420103367361bbd2d0
PYTHON_OSLO_CONCURRENCY_LICENSE = Apache-2.0
PYTHON_OSLO_CONCURRENCY_LICENSE_FILES = LICENSE
PYTHON_OSLO_CONCURRENCY_SETUP_TYPE = setuptools

$(eval $(python-package))
