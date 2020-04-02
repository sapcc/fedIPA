# vim: noexpandtab filetype=make
################################################################################
#
# python-pkginfo
#
################################################################################

PYTHON_PKGINFO_VERSION = 1.5.0.1
PYTHON_PKGINFO_SOURCE = pkginfo-1.5.0.1.tar.gz
PYTHON_PKGINFO_SITE = https://files.pythonhosted.org/packages/6c/04/fd6683d24581894be8b25bc8c68ac7a0a73bf0c4d74b888ac5fe9a28e77f/
PYTHON_PKGINFO_LICENSE = MIT
PYTHON_PKGINFO_LICENSE_FILES = LICENSE
PYTHON_PKGINFO_SETUP_TYPE = setuptools

$(eval $(python-package))
