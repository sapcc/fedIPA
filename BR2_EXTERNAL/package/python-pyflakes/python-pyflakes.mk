# vim: noexpandtab filetype=make
################################################################################
#
# python-pyflakes
#
################################################################################

PYTHON_PYFLAKES_VERSION = 2.1.1
PYTHON_PYFLAKES_SOURCE = pyflakes-2.1.1.tar.gz
PYTHON_PYFLAKES_SITE = https://files.pythonhosted.org/packages/52/64/87303747635c2988fcaef18af54bfdec925b6ea3b80bcd28aaca5ba41c9e/
PYTHON_PYFLAKES_LICENSE = MIT
PYTHON_PYFLAKES_LICENSE_FILES = LICENSE
PYTHON_PYFLAKES_SETUP_TYPE = setuptools

$(eval $(python-package))
