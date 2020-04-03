# vim: noexpandtab filetype=make
################################################################################
#
# python-repoze.lru
#
################################################################################

PYTHON_REPOZE_LRU_VERSION = 0.7
PYTHON_REPOZE_LRU_SOURCE = repoze.lru-0.7.tar.gz
PYTHON_REPOZE_LRU_SITE = https://files.pythonhosted.org/packages/12/bc/595a77c4b5e204847fdf19268314ef59c85193a9dc9f83630fc459c0fee5
PYTHON_REPOZE_LRU_LICENSE = BSD-derived (http://www.repoze.org/LICENSE.txt)
PYTHON_REPOZE_LRU_LICENSE_FILES = LICENSE
PYTHON_REPOZE_LRU_SETUP_TYPE = setuptools

$(eval $(python-package))
