# vim: noexpandtab filetype=make
################################################################################
#
# python-pre-commit
#
################################################################################

PYTHON_PRE_COMMIT_VERSION = 2.2.0
PYTHON_PRE_COMMIT_SOURCE = pre_commit-2.2.0.tar.gz
PYTHON_PRE_COMMIT_SITE = https://files.pythonhosted.org/packages/45/f6/2d43d760cc9d229df0502e140519e47739e36ff0d1475a6523b0bd618995/
PYTHON_PRE_COMMIT_LICENSE = MIT
PYTHON_PRE_COMMIT_LICENSE_FILES = LICENSE
PYTHON_PRE_COMMIT_SETUP_TYPE = setuptools

$(eval $(python-package))
