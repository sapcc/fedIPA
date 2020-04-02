# vim: noexpandtab filetype=make
################################################################################
#
# python-hypothesis
#
################################################################################

PYTHON_HYPOTHESIS_VERSION = 5.8.0
PYTHON_HYPOTHESIS_SOURCE = hypothesis-5.8.0.tar.gz
PYTHON_HYPOTHESIS_SITE = https://files.pythonhosted.org/packages/fd/0a/7e58f2806ccda0dacd63fd07db816c045258fe0412ce9d74f0c12acd4d7f/
PYTHON_HYPOTHESIS_LICENSE = MPL-2.0
PYTHON_HYPOTHESIS_LICENSE_FILES = LICENSE
PYTHON_HYPOTHESIS_SETUP_TYPE = setuptools

$(eval $(python-package))
