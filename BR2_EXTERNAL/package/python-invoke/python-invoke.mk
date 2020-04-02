# vim: noexpandtab filetype=make
################################################################################
#
# python-invoke
#
################################################################################

PYTHON_INVOKE_VERSION = 1.4.1
PYTHON_INVOKE_SOURCE = invoke-1.4.1.tar.gz
PYTHON_INVOKE_SITE = https://files.pythonhosted.org/packages/b6/08/b345475cfaaa542ae78a172d5b23979ad0577f15a32b16e5e54b2a7e80c6/
PYTHON_INVOKE_LICENSE = BSD-2-Clause
PYTHON_INVOKE_LICENSE_FILES = LICENSE
PYTHON_INVOKE_SETUP_TYPE = setuptools

$(eval $(python-package))
