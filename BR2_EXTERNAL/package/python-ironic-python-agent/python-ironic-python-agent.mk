# vim: noexpandtab filetype=make
################################################################################
#
# python-ironic-python-agent
#
################################################################################

PYTHON_IRONIC_PYTHON_AGENT_VERSION = 6.0.0
PYTHON_IRONIC_PYTHON_AGENT_SOURCE = ironic-python-agent-6.0.0.tar.gz
PYTHON_IRONIC_PYTHON_AGENT_SITE = https://files.pythonhosted.org/packages/ce/b2/bb34d209d58870381796807476535ab9761c3c330498b41ff89b54b714e9
PYTHON_IRONIC_PYTHON_AGENT_LICENSE = Apache-2.0
PYTHON_IRONIC_PYTHON_AGENT_LICENSE_FILES = LICENSE
PYTHON_IRONIC_PYTHON_AGENT_SETUP_TYPE = setuptools

$(eval $(python-package))
