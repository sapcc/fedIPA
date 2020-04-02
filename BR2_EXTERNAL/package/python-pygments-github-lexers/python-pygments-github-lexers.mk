# vim: noexpandtab filetype=make
################################################################################
#
# python-pygments-github-lexers
#
################################################################################

PYTHON_PYGMENTS_GITHUB_LEXERS_VERSION = 0.0.5
PYTHON_PYGMENTS_GITHUB_LEXERS_SOURCE = pygments-github-lexers-0.0.5.tar.gz
PYTHON_PYGMENTS_GITHUB_LEXERS_SITE = https://files.pythonhosted.org/packages/eb/04/d41eaf70152a8db863f57376660e772b3a1221469dbaeafe142ba8fdcd01/
PYTHON_PYGMENTS_GITHUB_LEXERS_LICENSE = BSD-2-Clause
PYTHON_PYGMENTS_GITHUB_LEXERS_LICENSE_FILES = LICENSE
PYTHON_PYGMENTS_GITHUB_LEXERS_SETUP_TYPE = setuptools

$(eval $(python-package))
