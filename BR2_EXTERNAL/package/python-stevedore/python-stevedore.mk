# vim: noexpandtab filetype=make
################################################################################
#
# python-stevedore
#
################################################################################

PYTHON_STEVEDORE_VERSION = 1.32.0
PYTHON_STEVEDORE_SOURCE = stevedore-1.32.0.tar.gz
PYTHON_STEVEDORE_SITE = https://files.pythonhosted.org/packages/be/19/83fd12828f879f53b85fe820925776aecda710944279e47a2dac53444adc/
PYTHON_STEVEDORE_LICENSE = Apache-2.0
PYTHON_STEVEDORE_LICENSE_FILES = LICENSE
PYTHON_STEVEDORE_SETUP_TYPE = setuptools

$(eval $(python-package))
