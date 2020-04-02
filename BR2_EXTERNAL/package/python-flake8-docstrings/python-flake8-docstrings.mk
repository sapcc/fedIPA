# vim: noexpandtab filetype=make
################################################################################
#
# python-flake8-docstrings
#
################################################################################

PYTHON_FLAKE8_DOCSTRINGS_VERSION = 1.5.0
PYTHON_FLAKE8_DOCSTRINGS_SOURCE = flake8-docstrings-1.5.0.tar.gz
PYTHON_FLAKE8_DOCSTRINGS_SITE = https://files.pythonhosted.org/packages/3f/a8/41268bdb46d4ec7c8dc098076d32fa16d4b9e83f12b95427f6c35c060b89/
PYTHON_FLAKE8_DOCSTRINGS_LICENSE = MIT
PYTHON_FLAKE8_DOCSTRINGS_LICENSE_FILES = LICENSE
PYTHON_FLAKE8_DOCSTRINGS_SETUP_TYPE = setuptools

$(eval $(python-package))
