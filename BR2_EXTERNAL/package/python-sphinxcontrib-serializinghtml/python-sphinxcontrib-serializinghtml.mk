# vim: noexpandtab filetype=make
################################################################################
#
# python-sphinxcontrib-serializinghtml
#
################################################################################

PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_VERSION = 1.1.4
PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_SOURCE = sphinxcontrib-serializinghtml-1.1.4.tar.gz
PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_SITE = https://files.pythonhosted.org/packages/ac/86/021876a9dd4eac9dae0b1d454d848acbd56d5574d350d0f835043b5ac2cd/
PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_LICENSE = BSD-2-Clause
PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_LICENSE_FILES = LICENSE
PYTHON_SPHINXCONTRIB_SERIALIZINGHTML_SETUP_TYPE = setuptools

$(eval $(python-package))
