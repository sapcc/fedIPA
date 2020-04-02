# vim: noexpandtab filetype=make
################################################################################
#
# python-nodeenv
#
################################################################################

PYTHON_NODEENV_VERSION = 1.3.5
PYTHON_NODEENV_SOURCE = Unknown
PYTHON_NODEENV_SITE = Unknown
PYTHON_NODEENV_LICENSE = BSD-2-Clause
PYTHON_NODEENV_LICENSE_FILES = LICENSE
PYTHON_NODEENV_SETUP_TYPE = setuptools

$(eval $(python-package))
