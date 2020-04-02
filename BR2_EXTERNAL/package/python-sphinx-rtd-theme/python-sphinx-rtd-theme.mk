# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinx-rtd-theme
#
################################################################################

PYTHON_SPHINX_RTD_THEME_VERSION = 0.4.3
PYTHON_SPHINX_RTD_THEME_SOURCE = sphinx_rtd_theme-0.4.3.tar.gz
PYTHON_SPHINX_RTD_THEME_SITE = https://files.pythonhosted.org/packages/ed/73/7e550d6e4cf9f78a0e0b60b9d93dba295389c3d271c034bf2ea3463a79f9/
PYTHON_SPHINX_RTD_THEME_LICENSE = MIT
PYTHON_SPHINX_RTD_THEME_LICENSE_FILES = LICENSE
PYTHON_SPHINX_RTD_THEME_SETUP_TYPE = setuptools

$(eval $(python-package))
