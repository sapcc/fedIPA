# vim: noexpandtab filetype=make
################################################################################
#
# python-jaraco.itertools
#
################################################################################

PYTHON_JARACOITERTOOLS_VERSION = 5.0.0
PYTHON_JARACOITERTOOLS_SOURCE = jaraco.itertools-5.0.0.tar.gz
PYTHON_JARACOITERTOOLS_SITE = https://files.pythonhosted.org/packages/d7/ae/09db7a1bdc3172ed85c9e4f3271b5ec0c65aba17f5d0fda55cfa1ef75f2d/
PYTHON_JARACOITERTOOLS_LICENSE = MIT
PYTHON_JARACOITERTOOLS_LICENSE_FILES = LICENSE
PYTHON_JARACOITERTOOLS_SETUP_TYPE = setuptools

$(eval $(python-package))
