# vim: noexpandtab filetype=make
################################################################################
#
# python-towncrier
#
################################################################################

PYTHON_TOWNCRIER_VERSION = 19.2.0
PYTHON_TOWNCRIER_SOURCE = towncrier-19.2.0.tar.gz
PYTHON_TOWNCRIER_SITE = https://files.pythonhosted.org/packages/eb/90/cdaaf0c0c03b17c3de0b9132334e69c8cde6028fadc2e81762fd312e7cdf/
PYTHON_TOWNCRIER_LICENSE = MIT
PYTHON_TOWNCRIER_LICENSE_FILES = LICENSE
PYTHON_TOWNCRIER_SETUP_TYPE = setuptools

$(eval $(python-package))
