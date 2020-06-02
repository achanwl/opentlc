#!/bin/bash
#

# Update & reboot bastion first
#
ansible-playbook playbooks/update-bastion.yml

# Get into the dir
#
cd /usr/share/ansible/openshift-ansible

# Pre-install
#
# Needs to be separated cuz it creates inventory file
#
ansible-playbook --ask-vault-pass ~/opentlc/ocp-ha-lab/playbooks/preinstall.yml

# Build
#
ansible-playbook --ask-vault-pass ~/opentlc/ocp-ha-lab/playbooks/build.yml

