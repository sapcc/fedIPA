# vim: noexpandtab filetype=make
################################################################################
#
# python-manhole
#
################################################################################

PYTHON_MANHOLE_VERSION = 1.6.0
PYTHON_MANHOLE_SOURCE = manhole-1.6.0.tar.gz
PYTHON_MANHOLE_SITE = https://files.pythonhosted.org/packages/94/6c/a491e9c9c430f0f10d9b6b14bc074886b8ef318061812c34326a5fb352d3/
PYTHON_MANHOLE_LICENSE = BSD-2-Clause
PYTHON_MANHOLE_LICENSE_FILES = LICENSE
PYTHON_MANHOLE_SETUP_TYPE = setuptools

$(eval $(python-package))
