# Update repos
#
update-repos:
	ansible-playbook update-repos.yml

setup-bastion:
	ansible-playbook setup-bastion.yml

create-cluster:
	cd ~
	openshift-install create cluster --dir $HOME/cluster-${GUID}
