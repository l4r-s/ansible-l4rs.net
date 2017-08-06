# Ansible Site Repository
This repository holds my private ansible stuff.

### Bootstrap
Before running the ansible playbook for the first time you need to install the required python packages and all roles need to be downloaded
or updated.
1. `make setup` this will install all required python packages
2. Put the ansible-vault password in the file secret.key
3. `make deploy` will deploy the whole seite


### Encrypted Variables
With `make edit_vault` you can easily edit the secrets in the vault.

## Roles
All roles are defined in `roles/roles_requirements.yml` and will be update if you run `make deploy` or `extensions/setup/setup.sh`.
