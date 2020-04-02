# vim: noexpandtab filetype=make
################################################################################
#
# python-eventlet
#
################################################################################

PYTHON_EVENTLET_VERSION = 0.25.1
PYTHON_EVENTLET_SOURCE = eventlet-0.25.1.tar.gz
PYTHON_EVENTLET_SITE = https://files.pythonhosted.org/packages/5a/e3/466d72d12a09cef2b80dea685141afd65914fd1cdea0be0609779be05e92/
PYTHON_EVENTLET_LICENSE = MIT
PYTHON_EVENTLET_LICENSE_FILES = LICENSE
PYTHON_EVENTLET_SETUP_TYPE = setuptools

$(eval $(python-package))
