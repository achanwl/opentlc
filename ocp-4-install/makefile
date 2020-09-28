# Update repos
#
update-repos:
	ansible-playbook update-repos.yml
	sleep 10; reboot

setup-bastion:
	ansible-playbook setup-bastion.yml

create-cluster:
	ansible-playbook --ask-vault-pass create-cluster.yml
