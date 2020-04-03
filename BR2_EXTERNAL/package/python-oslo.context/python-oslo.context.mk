# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.context
#
################################################################################

PYTHON_OSLO_CONTEXT_VERSION = 3.0.1
PYTHON_OSLO_CONTEXT_SOURCE = oslo.context-3.0.1.tar.gz
PYTHON_OSLO_CONTEXT_SITE = https://files.pythonhosted.org/packages/f8/23/40a5a66bc595c10cf5cc5b95b608dc81569633db8474bc634418f3020211
PYTHON_OSLO_CONTEXT_LICENSE = Apache-2.0
PYTHON_OSLO_CONTEXT_LICENSE_FILES = LICENSE
PYTHON_OSLO_CONTEXT_SETUP_TYPE = setuptools

$(eval $(python-package))
