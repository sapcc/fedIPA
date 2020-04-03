# vim: noexpandtab filetype=make
################################################################################
#
# python-routes
#
################################################################################

PYTHON_ROUTES_VERSION = 2.4.1
PYTHON_ROUTES_SOURCE = Routes-2.4.1.tar.gz
PYTHON_ROUTES_SITE = https://files.pythonhosted.org/packages/33/38/ea827837e68d9c7dde4cff7ec122a93c319f0effc08ce92a17095576603f
PYTHON_ROUTES_LICENSE = MIT
PYTHON_ROUTES_LICENSE_FILES = LICENSE
PYTHON_ROUTES_SETUP_TYPE = setuptools

$(eval $(python-package))
