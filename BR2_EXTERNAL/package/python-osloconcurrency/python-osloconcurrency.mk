################################################################################
#
# python-oslo.concurrency
#
################################################################################

PYTHON_OSLOCONCURRENCY_VERSION = 4.0.1
PYTHON_OSLOCONCURRENCY_SOURCE = oslo.concurrency-$(PYTHON_OSLOCONCURRENCY_VERSION).tar.gz
PYTHON_OSLOCONCURRENCY_SITE = https://tarballs.opendev.org/openstack/oslo.concurrency
PYTHON_OSLOCONCURRENCY_LICENSE = Apache-2.0
PYTHON_OSLOCONCURRENCY_LICENSE_FILES = LICENSE
PYTHON_OSLOCONCURRENCY_SETUP_TYPE = setuptools

$(eval $(python-package))
