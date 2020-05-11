#!/bin/bash
#

# Pre-install
#
# Needs to be separated cuz it creates inventory file
#
ansible-playbook -f 10 --ask-vault-pass playbooks/preinstall.yml

# Reboot bastion
#
reboot

# Build
#
ansible-playbook -f 10 --ask-vault-pass playbooks/build.yml

