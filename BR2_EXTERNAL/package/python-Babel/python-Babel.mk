################################################################################
#
# python-Babel
#
################################################################################

PYTHON_BABEL_VERSION = 2.8.0
PYTHON_BABEL_SOURCE = Babel-$(PYTHON_BABEL_VERSION).tar.gz
PYTHON_BABEL_SITE = https://files.pythonhosted.org/packages/34/18/8706cfa5b2c73f5a549fdc0ef2e24db71812a2685959cff31cbdfc010136/
PYTHON_BABEL_LICENSE = BSD
PYTHON_BABEL_LICENSE_FILES = LICENSE
PYTHON_BABEL_SETUP_TYPE = setuptools

$(eval $(python-package))
