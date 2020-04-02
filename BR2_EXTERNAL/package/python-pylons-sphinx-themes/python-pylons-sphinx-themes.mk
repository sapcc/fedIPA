# vim: noexpandtab filetype=make
################################################################################
#
# python-pylons-sphinx-themes
#
################################################################################

PYTHON_PYLONS_SPHINX_THEMES_VERSION = 1.0.11
PYTHON_PYLONS_SPHINX_THEMES_SOURCE = pylons-sphinx-themes-1.0.11.tar.gz
PYTHON_PYLONS_SPHINX_THEMES_SITE = https://files.pythonhosted.org/packages/16/65/cd8f002fb62f503a5b3e83b9ab0d11e62f98e7d39ec02b29f83b18152c01/
PYTHON_PYLONS_SPHINX_THEMES_LICENSE = BSD-derived (http://www.repoze.org/LICENSE.txt)
PYTHON_PYLONS_SPHINX_THEMES_LICENSE_FILES = LICENSE
PYTHON_PYLONS_SPHINX_THEMES_SETUP_TYPE = setuptools

$(eval $(python-package))
