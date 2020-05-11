#!/bin/bash
#

# Update & reboot bastion first
#
ansible-playbook playbooks/update-bastion.yml

# Pre-install
#
# Needs to be separated cuz it creates inventory file
#
ansible-playbook --ask-vault-pass playbooks/preinstall.yml

# Build
#
ansible-playbook --ask-vault-pass playbooks/build.yml

