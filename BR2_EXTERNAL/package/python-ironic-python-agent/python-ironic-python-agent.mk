################################################################################
#
# python-ironic-python-agent
#
################################################################################

PYTHON_IRONIC_PYTHON_AGENT_VERSION = 6.0.0
PYTHON_IRONIC_PYTHON_AGENT_SOURCE = ironic-python-agent-$(PYTHON_IRONIC_PYTHON_AGENT_VERSION).tar.gz
PYTHON_IRONIC_PYTHON_AGENT_SITE = https://tarballs.opendev.org/openstack/ironic-python-agent/
PYTHON_IRONIC_PYTHON_AGENT_LICENSE = Apache-2.0
PYTHON_IRONIC_PYTHON_AGENT_LICENSE_FILES = LICENSE
PYTHON_IRONIC_PYTHON_AGENT_SETUP_TYPE = setuptools

$(eval $(python-package))
