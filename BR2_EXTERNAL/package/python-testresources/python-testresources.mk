# vim: noexpandtab filetype=make
################################################################################
#
# python-testresources
#
################################################################################

PYTHON_TESTRESOURCES_VERSION = 2.0.1
PYTHON_TESTRESOURCES_SOURCE = testresources-2.0.1.tar.gz
PYTHON_TESTRESOURCES_SITE = https://files.pythonhosted.org/packages/9d/57/8e3986cd95a80dd23195f599befa023eb85d031d2d870c47124fa5ccbf06/
PYTHON_TESTRESOURCES_LICENSE = BSD-2-Clause
PYTHON_TESTRESOURCES_LICENSE_FILES = LICENSE
PYTHON_TESTRESOURCES_SETUP_TYPE = setuptools

$(eval $(python-package))
