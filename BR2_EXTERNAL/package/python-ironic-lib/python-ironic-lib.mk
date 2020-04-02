# vim: noexpandtab filetype=make
################################################################################
#
# python-ironic-lib
#
################################################################################

PYTHON_IRONIC_LIB_VERSION = 4.1.0
PYTHON_IRONIC_LIB_SOURCE = ironic-lib-4.1.0.tar.gz
PYTHON_IRONIC_LIB_SITE = https://files.pythonhosted.org/packages/d3/a4/84baf66973af3e6e1c446d5798f71345ec083ec2bb6116d3db52129afafc/
PYTHON_IRONIC_LIB_LICENSE = Apache-2.0
PYTHON_IRONIC_LIB_LICENSE_FILES = LICENSE
PYTHON_IRONIC_LIB_SETUP_TYPE = setuptools

$(eval $(python-package))
