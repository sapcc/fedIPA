# vim: noexpandtab filetype=make
################################################################################
#
# python-tempita
#
################################################################################

PYTHON_TEMPITA_VERSION = 0.5.2
PYTHON_TEMPITA_SOURCE = Tempita-0.5.2.tar.gz
PYTHON_TEMPITA_SITE = https://files.pythonhosted.org/packages/56/c8/8ed6eee83dbddf7b0fc64dd5d4454bc05e6ccaafff47991f73f2894d9ff4/
PYTHON_TEMPITA_LICENSE = MIT
PYTHON_TEMPITA_LICENSE_FILES = LICENSE
PYTHON_TEMPITA_SETUP_TYPE = setuptools

$(eval $(python-package))
