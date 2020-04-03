################################################################################
#
# python-systemd
#
################################################################################

PYTHON_SYSTEMD_VERSION = 0.16.1
PYTHON_SYSTEMD_SOURCE = systemd-$(PYTHON_SYSTEMD_VERSION).tar.gz
PYTHON_SYSTEMD_SITE = https://files.pythonhosted.org/packages/d4/c2/2195b049effd866b5d26926e672be83fc6f3263aa71ea0639e8eab44851e/
PYTHON_SYSTEMD_LICENSE = Apache-2.0
PYTHON_SYSTEMD_LICENSE_FILES = LICENSE
PYTHON_SYSTEMD_SETUP_TYPE = setuptools

$(eval $(python-package))
