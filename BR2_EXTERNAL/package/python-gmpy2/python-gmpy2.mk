# vim: noexpandtab filetype=make
################################################################################
#
# python-gmpy2
#
################################################################################

PYTHON_GMPY2_VERSION = 2.0.8
PYTHON_GMPY2_SOURCE = gmpy2-2.0.8.zip
PYTHON_GMPY2_SITE = https://files.pythonhosted.org/packages/90/f4/9a2e384b325b69bc5827b9a6510a8fb4a51698c915c06a3f25a86458892a
PYTHON_GMPY2_LICENSE = 
PYTHON_GMPY2_LICENSE_FILES = LICENSE
PYTHON_GMPY2_SETUP_TYPE = setuptools

$(eval $(python-package))
