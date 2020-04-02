# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-jsmath
#
################################################################################

PYTHON_SPHINXCONTRIB_JSMATH_VERSION = 1.0.1
PYTHON_SPHINXCONTRIB_JSMATH_SOURCE = sphinxcontrib-jsmath-1.0.1.tar.gz
PYTHON_SPHINXCONTRIB_JSMATH_SITE = https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/
PYTHON_SPHINXCONTRIB_JSMATH_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_JSMATH_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_JSMATH_SETUP_TYPE = setuptools

$(eval $(python-package))
