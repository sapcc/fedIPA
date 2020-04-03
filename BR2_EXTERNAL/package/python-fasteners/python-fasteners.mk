# vim: noexpandtab filetype=make
################################################################################
#
# python-fasteners
#
################################################################################

PYTHON_FASTENERS_VERSION = 0.15
PYTHON_FASTENERS_SOURCE = fasteners-0.15.tar.gz
PYTHON_FASTENERS_SITE = https://files.pythonhosted.org/packages/15/d7/1e8b3270f21dffcaaf5a2889675e8b2fa35f8a43a5817a31d3820e8e9495
PYTHON_FASTENERS_LICENSE = Apache-2.0
PYTHON_FASTENERS_LICENSE_FILES = LICENSE
PYTHON_FASTENERS_SETUP_TYPE = setuptools

$(eval $(python-package))
