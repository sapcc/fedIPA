# vim: noexpandtab filetype=make
################################################################################
#
# python-coverage
#
################################################################################

PYTHON_COVERAGE_VERSION = 5.0.4
PYTHON_COVERAGE_SOURCE = coverage-5.0.4.tar.gz
PYTHON_COVERAGE_SITE = https://files.pythonhosted.org/packages/d1/7d/ac53d7350a5178c1f59ddf0f17552bf68e4bb3a202543f9a30bbaa46cf80/
PYTHON_COVERAGE_LICENSE = Apache-2.0
PYTHON_COVERAGE_LICENSE_FILES = LICENSE
PYTHON_COVERAGE_SETUP_TYPE = setuptools

$(eval $(python-package))
