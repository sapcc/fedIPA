# vim: noexpandtab filetype=make
################################################################################
#
# python-process-tests
#
################################################################################

PYTHON_PROCESS_TESTS_VERSION = 2.0.2
PYTHON_PROCESS_TESTS_SOURCE = process-tests-2.0.2.tar.gz
PYTHON_PROCESS_TESTS_SITE = https://files.pythonhosted.org/packages/5a/9b/c77450f9169597eef161963ae424e10813c398d603ccaf4d28f523f2bab4/
PYTHON_PROCESS_TESTS_LICENSE = BSD-2-Clause
PYTHON_PROCESS_TESTS_LICENSE_FILES = LICENSE
PYTHON_PROCESS_TESTS_SETUP_TYPE = setuptools

$(eval $(python-package))
