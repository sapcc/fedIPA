# vim: noexpandtab filetype=make
################################################################################
#
# python-stestr
#
################################################################################

PYTHON_STESTR_VERSION = 3.0.1
PYTHON_STESTR_SOURCE = stestr-3.0.1.tar.gz
PYTHON_STESTR_SITE = https://files.pythonhosted.org/packages/a4/20/7be12e9e605f9149cf6b4cbd76465832a377e26699a86beefb42e2235099/
PYTHON_STESTR_LICENSE = Apache-2.0
PYTHON_STESTR_LICENSE_FILES = LICENSE
PYTHON_STESTR_SETUP_TYPE = setuptools

$(eval $(python-package))
