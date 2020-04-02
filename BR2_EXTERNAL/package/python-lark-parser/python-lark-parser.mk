# vim: noexpandtab filetype=make
################################################################################
#
# python-lark-parser
#
################################################################################

PYTHON_LARK_PARSER_VERSION = 0.8.5
PYTHON_LARK_PARSER_SOURCE = lark-parser-0.8.5.tar.gz
PYTHON_LARK_PARSER_SITE = https://files.pythonhosted.org/packages/18/4d/8d522136c37d9e1ea74062b41b8d5e1318ebf45063ae46ce72ed60af223b/
PYTHON_LARK_PARSER_LICENSE = MIT
PYTHON_LARK_PARSER_LICENSE_FILES = LICENSE
PYTHON_LARK_PARSER_SETUP_TYPE = setuptools

$(eval $(python-package))
