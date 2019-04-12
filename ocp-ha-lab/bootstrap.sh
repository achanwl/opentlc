#!/bin/bash
#

# Pre-install
#
# Needs to be separated cuz it creates inventory file
#
ansible-playbook -f 20 --ask-vault-pass playbooks/preinstall.yml

# Build
#
ansible-playbook -f 20 --ask-vault-pass playbooks/build.yml
