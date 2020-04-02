# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-autoprogram
#
################################################################################

PYTHON_SPHINXCONTRIB_AUTOPROGRAM_VERSION = 0.1.5
PYTHON_SPHINXCONTRIB_AUTOPROGRAM_SOURCE = sphinxcontrib-autoprogram-0.1.5.tar.gz
PYTHON_SPHINXCONTRIB_AUTOPROGRAM_SITE = https://files.pythonhosted.org/packages/93/d4/ded802ffad1fd1870d3abbb7cfa1c31b059dc46c68f6a66b73360621f6c3/
PYTHON_SPHINXCONTRIB_AUTOPROGRAM_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_AUTOPROGRAM_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_AUTOPROGRAM_SETUP_TYPE = setuptools

$(eval $(python-package))
