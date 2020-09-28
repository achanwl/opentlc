# Update & reboot bastion first
#
update-bastion:
	ansible-playbook playbooks/update-bastion.yml
	sleep 10; reboot

# Preinstall
#
# Needs to be separated cuz it creates inventory file
#
preinstall:
	cd /usr/share/ansible/openshift-ansible
	ansible-playbook --ask-vault-pass ~/opentlc/ocp-ha-lab/playbooks/preinstall.yml

# Build the whole cluster
#
build:
	cd /usr/share/ansible/openshift-ansible
	ansible-playbook --ask-vault-pass ~/opentlc/ocp-ha-lab/playbooks/build.yml
