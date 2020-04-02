# vim: noexpandtab filetype=make
################################################################################
#
# python-uwsgi
#
################################################################################

PYTHON_UWSGI_VERSION = 2.0.18
PYTHON_UWSGI_SOURCE = uwsgi-2.0.18.tar.gz
PYTHON_UWSGI_SITE = https://files.pythonhosted.org/packages/e7/1e/3dcca007f974fe4eb369bf1b8629d5e342bb3055e2001b2e5340aaefae7a/
PYTHON_UWSGI_LICENSE = GPL-2.0+
PYTHON_UWSGI_LICENSE_FILES = LICENSE
PYTHON_UWSGI_SETUP_TYPE = setuptools

$(eval $(python-package))
