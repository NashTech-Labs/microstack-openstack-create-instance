#!/bin/bash

microstack.openstack server list 
#Server list that already created

microstack.openstack image list 
# image list

microstack.openstack flavor list 
# flavor list
microstack.openstack keypair list 
# key-pair list
microstack.openstack network list 
# network list

microstack.openstack security group list 
# security group list

# create an instance

microstack.openstack server create \
--flavor 1 \
--image cirros  \
--key-name microstack  \
--security-group ebab90b6-bad9-4712-8916-ae414b1db4da \
--nic net-id=3e78ada4-b353-4f68-ba2e-f16b395bdbf4 \
--wait new-instance1


# server list
echo "server/instance list"
microstack.openstack server list
