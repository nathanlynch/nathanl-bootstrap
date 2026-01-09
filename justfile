bootstrap-local:
	cd ansible && ansible-playbook -i inventory.yml playbook.yml --limit local --diff -vvv
