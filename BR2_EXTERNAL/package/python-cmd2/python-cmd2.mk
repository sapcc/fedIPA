# vim: noexpandtab filetype=make
################################################################################
#
# python-cmd2
#
################################################################################

PYTHON_CMD2_VERSION = 1.0.1
PYTHON_CMD2_SOURCE = cmd2-1.0.1.tar.gz
PYTHON_CMD2_SITE = https://files.pythonhosted.org/packages/6a/6c/dddfbf32bd3a83f9aa85bfb8149695a5bd1edb93402a5f232a270a8279b1/
PYTHON_CMD2_LICENSE = MIT
PYTHON_CMD2_LICENSE_FILES = LICENSE
PYTHON_CMD2_SETUP_TYPE = setuptools

$(eval $(python-package))
