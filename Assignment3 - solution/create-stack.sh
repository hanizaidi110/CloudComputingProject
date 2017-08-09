#!/bin/bash

# # Check parameters
test $# = 1 || { echo "Need 1 parameter: Name of the stack to create"; exit 1; }
STACK="Mystack"

# Create the stack using server-landscape.yaml and defining all necessary parameters
source openrc
openstack stack create --template server-landscape.yaml/ --parameter "image=ubuntu-16.04;flavor=Cloud Computing;key_pair=Cloud-Computing;external_net=tu-internal;zone=Cloud Computing 2017" --wait  Mystack


echo "Done"