update-repos:
	ansible-playbook update-repos.yml
	sleep 10; sudo reboot

setup-bastion:
	ansible-playbook setup-bastion.yml

create-cluster:
	ansible-playbook create-config.yml
	openshift-install create cluster --dir $$HOME/cluster-$${GUID} --log-level debug

post-install:
	ansible-playbook post-install.yml
	curl https://raw.githubusercontent.com/eparis/ssh-bastion/master/deploy/deploy.sh | bash

destroy-cluster:
	openshift-install destroy cluster --dir $$HOME/cluster-$${GUID} --log-level debug
	rm -fr $$HOME/cluster-$${GUID}

