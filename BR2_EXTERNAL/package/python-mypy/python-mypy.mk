# vim: noexpandtab filetype=make
################################################################################
#
# python-mypy
#
################################################################################

PYTHON_MYPY_VERSION = 0.770
PYTHON_MYPY_SOURCE = mypy-0.770.tar.gz
PYTHON_MYPY_SITE = https://files.pythonhosted.org/packages/88/a2/3d82acde5ccff66d38c1ab2b1657a17029ce88db3ea54cde500e188f9637/
PYTHON_MYPY_LICENSE = MIT
PYTHON_MYPY_LICENSE_FILES = LICENSE
PYTHON_MYPY_SETUP_TYPE = setuptools

$(eval $(python-package))
