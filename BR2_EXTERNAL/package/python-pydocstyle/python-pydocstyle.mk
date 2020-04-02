# vim: noexpandtab filetype=make
################################################################################
#
# python-pydocstyle
#
################################################################################

PYTHON_PYDOCSTYLE_VERSION = 5.0.2
PYTHON_PYDOCSTYLE_SOURCE = pydocstyle-5.0.2.tar.gz
PYTHON_PYDOCSTYLE_SITE = https://files.pythonhosted.org/packages/39/f4/3f670e71f11c4c65f0d5f4153f5191fb38786483513c90de66f08ef6e810/
PYTHON_PYDOCSTYLE_LICENSE = MIT
PYTHON_PYDOCSTYLE_LICENSE_FILES = LICENSE
PYTHON_PYDOCSTYLE_SETUP_TYPE = setuptools

$(eval $(python-package))
