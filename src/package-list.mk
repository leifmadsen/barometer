# Upstream Package List
#
# Everything here is defined as its suggested default
# value, it can always be overriden when invoking Make

# dpdk section
# DPDK_URL ?= git://dpdk.org/dpdk
DPDK_URL ?= http://dpdk.org/git/dpdk
DPDK_TAG ?= v16.11

LIBPQOS_URL ?= https://github.com/01org/intel-cmt-cat.git
LIBPQOS_TAG ?= master

PMUTOOLS_URL ?= https://github.com/andikleen/pmu-tools
PMUTOOLS_TAG ?= master

KAFKA_URL ?= https://github.com/edenhill/librdkafka.git
KAFKA_TAG ?= v0.9.5

# collectd section
COLLECTD_URL ?= https://github.com/redhat-nfvpe/collectd
COLLECTD_TAG ?= nfvpe/develop

COLLECTD_OPENSTACK_URL ?= https://github.com/openstack/collectd-ceilometer-plugin
COLLECTD_OPENSTACK_TAG ?= stable/pike

COLLECTD_AMQP1_PATCH_URL ?= https://github.com/collectd/collectd/pull/2618.patch
AMQP1_PATCH ?= 2619

QPID_PROTON_URL ?= https://github.com/apache/qpid-proton.git
QPID_TAG 	?= 0.18.1
