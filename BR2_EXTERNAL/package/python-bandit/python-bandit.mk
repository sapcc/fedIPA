# vim: noexpandtab filetype=make
################################################################################
#
# python-bandit
#
################################################################################

PYTHON_BANDIT_VERSION = 1.6.2
PYTHON_BANDIT_SOURCE = bandit-1.6.2.tar.gz
PYTHON_BANDIT_SITE = https://files.pythonhosted.org/packages/05/51/cbfd4b5a383d51a73a9e8cbf152037a212e0058ee8b329d4501f74cdddef/
PYTHON_BANDIT_LICENSE = Apache-2.0
PYTHON_BANDIT_LICENSE_FILES = LICENSE
PYTHON_BANDIT_SETUP_TYPE = setuptools

$(eval $(python-package))
