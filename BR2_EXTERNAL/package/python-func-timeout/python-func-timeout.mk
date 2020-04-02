# vim: noexpandtab filetype=make
################################################################################
#
# python-func-timeout
#
################################################################################

PYTHON_FUNC_TIMEOUT_VERSION = 4.3.5
PYTHON_FUNC_TIMEOUT_SOURCE = func_timeout-4.3.5.tar.gz
PYTHON_FUNC_TIMEOUT_SITE = https://files.pythonhosted.org/packages/b3/0d/bf0567477f7281d9a3926c582bfef21bff7498fc0ffd3e9de21811896a0b/
PYTHON_FUNC_TIMEOUT_LICENSE = LGPL-2.1
PYTHON_FUNC_TIMEOUT_LICENSE_FILES = LICENSE
PYTHON_FUNC_TIMEOUT_SETUP_TYPE = setuptools

$(eval $(python-package))
