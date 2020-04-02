# vim: noexpandtab filetype=make
################################################################################
#
# python-restructuredtext-lint
#
################################################################################

PYTHON_RESTRUCTUREDTEXT_LINT_VERSION = 1.3.0
PYTHON_RESTRUCTUREDTEXT_LINT_SOURCE = restructuredtext_lint-1.3.0.tar.gz
PYTHON_RESTRUCTUREDTEXT_LINT_SITE = https://files.pythonhosted.org/packages/62/76/bd8760de759fb74d7863e6935200af101cb128a7de008741a4e22341d03c/
PYTHON_RESTRUCTUREDTEXT_LINT_LICENSE = UNLICENSE
PYTHON_RESTRUCTUREDTEXT_LINT_LICENSE_FILES = LICENSE
PYTHON_RESTRUCTUREDTEXT_LINT_SETUP_TYPE = setuptools

$(eval $(python-package))
