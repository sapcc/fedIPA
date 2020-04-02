# vim: noexpandtab filetype=make
################################################################################
#
# python-reno
#
################################################################################

PYTHON_RENO_VERSION = 3.0.1
PYTHON_RENO_SOURCE = reno-3.0.1.tar.gz
PYTHON_RENO_SITE = https://files.pythonhosted.org/packages/63/1a/80667c96c5b2c048c11f7259bcbc14a06eddf156cda3bdb36465ad3a3d53/
PYTHON_RENO_LICENSE = Apache-2.0
PYTHON_RENO_LICENSE_FILES = LICENSE
PYTHON_RENO_SETUP_TYPE = setuptools

$(eval $(python-package))
