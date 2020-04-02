# vim: noexpandtab filetype=make
################################################################################
#
# python-path
#
################################################################################

PYTHON_PATH_VERSION = 13.2.0
PYTHON_PATH_SOURCE = path-13.2.0.tar.gz
PYTHON_PATH_SITE = https://files.pythonhosted.org/packages/80/be/3240de62eb90ccc98bb2877d4a8da910ba243d13c78e173f93da9f6939e1/
PYTHON_PATH_LICENSE = MIT
PYTHON_PATH_LICENSE_FILES = LICENSE
PYTHON_PATH_SETUP_TYPE = setuptools

$(eval $(python-package))
