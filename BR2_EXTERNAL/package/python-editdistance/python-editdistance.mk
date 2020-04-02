# vim: noexpandtab filetype=make
################################################################################
#
# python-editdistance
#
################################################################################

PYTHON_EDITDISTANCE_VERSION = 0.5.3
PYTHON_EDITDISTANCE_SOURCE = editdistance-0.5.3.tar.gz
PYTHON_EDITDISTANCE_SITE = https://files.pythonhosted.org/packages/12/b6/98874ea5f6280bf63f899827978d99635de91f5e9af60cc290715cd192e3/
PYTHON_EDITDISTANCE_LICENSE = MIT
PYTHON_EDITDISTANCE_LICENSE_FILES = LICENSE
PYTHON_EDITDISTANCE_SETUP_TYPE = setuptools

$(eval $(python-package))
