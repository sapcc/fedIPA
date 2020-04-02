# vim: noexpandtab filetype=make
################################################################################
#
# python-bleach
#
################################################################################

PYTHON_BLEACH_VERSION = 3.1.4
PYTHON_BLEACH_SOURCE = bleach-3.1.4.tar.gz
PYTHON_BLEACH_SITE = https://files.pythonhosted.org/packages/3f/63/8665338373efc632dc60de6526460ba33fa21bae1eaa5e4f37159ca38e94/
PYTHON_BLEACH_LICENSE = Apache-2.0
PYTHON_BLEACH_LICENSE_FILES = LICENSE
PYTHON_BLEACH_SETUP_TYPE = setuptools

$(eval $(python-package))
