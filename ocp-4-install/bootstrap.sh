#!/bin/bash
#

# Update repos
ansible-playbook update-repos.yml

# Setup
ansible-playbook setup-bastion.yml
