# vim: noexpandtab filetype=make
################################################################################
#
# python-oslo.context
#
################################################################################

PYTHON_OSLOCONTEXT_VERSION = 3.0.1
PYTHON_OSLOCONTEXT_SOURCE = oslo.context-3.0.1.tar.gz
PYTHON_OSLOCONTEXT_SITE = https://files.pythonhosted.org/packages/f8/23/40a5a66bc595c10cf5cc5b95b608dc81569633db8474bc634418f3020211
PYTHON_OSLOCONTEXT_LICENSE = Apache-2.0
PYTHON_OSLOCONTEXT_LICENSE_FILES = LICENSE
PYTHON_OSLOCONTEXT_SETUP_TYPE = setuptools

$(eval $(python-package))
