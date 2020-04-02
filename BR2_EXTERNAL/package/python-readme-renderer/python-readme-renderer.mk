# vim: noexpandtab filetype=make
################################################################################
#
# python-readme-renderer
#
################################################################################

PYTHON_README_RENDERER_VERSION = 25.0
PYTHON_README_RENDERER_SOURCE = readme_renderer-25.0.tar.gz
PYTHON_README_RENDERER_SITE = https://files.pythonhosted.org/packages/d6/3b/2dc38264c9dfe0974f44ee075672cf6ed09fc8a3c4d8e409785ca35e935e/
PYTHON_README_RENDERER_LICENSE = Apache-2.0
PYTHON_README_RENDERER_LICENSE_FILES = LICENSE
PYTHON_README_RENDERER_SETUP_TYPE = setuptools

$(eval $(python-package))
