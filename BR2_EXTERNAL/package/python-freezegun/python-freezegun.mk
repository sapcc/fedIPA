# vim: noexpandtab filetype=make
################################################################################
#
# python-freezegun
#
################################################################################

PYTHON_FREEZEGUN_VERSION = 0.3.15
PYTHON_FREEZEGUN_SOURCE = freezegun-0.3.15.tar.gz
PYTHON_FREEZEGUN_SITE = https://files.pythonhosted.org/packages/67/eb/6ac50b9faaa5dc2345ed4e905d242b840750d99a15763a880c4d785974e9/
PYTHON_FREEZEGUN_LICENSE = Apache-2.0
PYTHON_FREEZEGUN_LICENSE_FILES = LICENSE
PYTHON_FREEZEGUN_SETUP_TYPE = setuptools

$(eval $(python-package))
