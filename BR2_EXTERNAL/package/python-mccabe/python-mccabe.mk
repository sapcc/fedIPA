# vim: noexpandtab filetype=make
################################################################################
#
# python-mccabe
#
################################################################################

PYTHON_MCCABE_VERSION = 0.6.1
PYTHON_MCCABE_SOURCE = mccabe-0.6.1.tar.gz
PYTHON_MCCABE_SITE = https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/
PYTHON_MCCABE_LICENSE = MIT
PYTHON_MCCABE_LICENSE_FILES = LICENSE
PYTHON_MCCABE_SETUP_TYPE = setuptools

$(eval $(python-package))
