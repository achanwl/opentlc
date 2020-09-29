# Update repos
#
update-repos:
	ansible-playbook update-repos.yml
	sleep 10; reboot

setup-bastion:
	ansible-playbook setup-bastion.yml

create-cluster:
#	ansible-playbook --ask-vault-pass create-cluster.yml
	ansible-playbook --ask-vault-pass create-cluster.yml && openshift-install create cluster --dir $$HOME/cluster-$${GUID} --log-level debug

destroy-cluster:
	openshift-install destroy cluster --dir $$HOME/cluster-$${GUID} --log-level debug

