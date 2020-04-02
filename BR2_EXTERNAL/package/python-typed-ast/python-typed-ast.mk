# vim: noexpandtab filetype=make
################################################################################
#
# python-typed-ast
#
################################################################################

PYTHON_TYPED_AST_VERSION = 1.4.1
PYTHON_TYPED_AST_SOURCE = typed_ast-1.4.1.tar.gz
PYTHON_TYPED_AST_SITE = https://files.pythonhosted.org/packages/18/09/b6a6b14bb8c5ec4a24fe0cf0160aa0b784fd55a6fd7f8da602197c5c461e/
PYTHON_TYPED_AST_LICENSE = Apache License 2.0
PYTHON_TYPED_AST_LICENSE_FILES = LICENSE
PYTHON_TYPED_AST_SETUP_TYPE = setuptools

$(eval $(python-package))
