# vim: noexpandtab filetype=make
################################################################################
#
# python-snowballstemmer
#
################################################################################

PYTHON_SNOWBALLSTEMMER_VERSION = 2.0.0
PYTHON_SNOWBALLSTEMMER_SOURCE = snowballstemmer-2.0.0.tar.gz
PYTHON_SNOWBALLSTEMMER_SITE = https://files.pythonhosted.org/packages/21/1b/6b8bbee253195c61aeaa61181bb41d646363bdaa691d0b94b304d4901193/
PYTHON_SNOWBALLSTEMMER_LICENSE = BSD-2-Clause
PYTHON_SNOWBALLSTEMMER_LICENSE_FILES = LICENSE
PYTHON_SNOWBALLSTEMMER_SETUP_TYPE = setuptools

$(eval $(python-package))
