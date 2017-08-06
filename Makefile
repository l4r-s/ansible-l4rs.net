.PHONY: squid squid_test edit_vault

deploy:
	# download the newest roles from git and run ansible-playbook
	extensions/setup/role_update.sh ; cd plays/ ;  ansible-playbook -i ../test.ini site.yml

test:
	# simple run the vm playbook
	cd plays/ ;  ansible-playbook -v -i ../test.ini site.yml --check

edit_vault:
	# This edits the vault. Assumes the keyfile is in place.
	ansible-vault edit group_vars/all/vault.yml --vault-password-file=secret.key

setup:
	# This will setup all needed pyhton role requirements defined in extensions/setup/python_requirements.txt
	extensions/setup/setup.sh
