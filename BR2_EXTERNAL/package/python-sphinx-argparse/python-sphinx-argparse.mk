# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinx-argparse
#
################################################################################

PYTHON_SPHINX_ARGPARSE_VERSION = 0.2.5
PYTHON_SPHINX_ARGPARSE_SOURCE = sphinx-argparse-0.2.5.tar.gz
PYTHON_SPHINX_ARGPARSE_SITE = https://files.pythonhosted.org/packages/06/2b/dfad6a1831c3aeeae25d8d3d417224684befbf45e10c7f2141631616a6ed/
PYTHON_SPHINX_ARGPARSE_LICENSE = MIT
PYTHON_SPHINX_ARGPARSE_LICENSE_FILES = LICENSE
PYTHON_SPHINX_ARGPARSE_SETUP_TYPE = setuptools

$(eval $(python-package))
