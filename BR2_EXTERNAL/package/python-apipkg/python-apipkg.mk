# vim: noexpandtab filetype=make
################################################################################
#
# python-apipkg
#
################################################################################

PYTHON_APIPKG_VERSION = 1.5
PYTHON_APIPKG_SOURCE = apipkg-1.5.tar.gz
PYTHON_APIPKG_SITE = https://files.pythonhosted.org/packages/a8/af/07a13b1560ebcc9bf4dd439aeb63243cbd8d374f4f328691470d6a9b9804/
PYTHON_APIPKG_LICENSE = MIT
PYTHON_APIPKG_LICENSE_FILES = LICENSE
PYTHON_APIPKG_SETUP_TYPE = setuptools

$(eval $(python-package))
