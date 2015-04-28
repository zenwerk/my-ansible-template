.PHONY: ansible_vagrant

ansible_vagrant_hoge:
	ssh-add
	ansible-playbook -i inventory/vagrant main.yml --private-key=~/.vagrant.d/insecure_private_key

ansible_vagrant:
	ansible-playbook -i inventory/vagrant initial.yml

ansible_vagrant_local:
	ansible-playbook -i inventory/vagrant initial.yml --connection=local
