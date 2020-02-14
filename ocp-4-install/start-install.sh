#!/bin/bash
#

cd ~

openshift-install create cluster --dir $HOME/cluster-${GUID}

