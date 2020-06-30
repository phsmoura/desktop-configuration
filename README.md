# Desktop Configuration

## Install Ansible
Run script "install_ansible.sh" or the following commands:

```bash
./install_ansible.sh
```
## Ansible Configuration
Change the variable roles_path on /etc/ansible/ansible.cfg:

```
roles_path = /path/desktop_configuration/roles/
```
## Install programs

### Essenciais
[ ] Vim
[ ] Htop
[ ] Git
[ ] Pip3
[x] Virtualenv
[ ] Docker
[ ] Forticlient
[ ] Chrome
[ ] Microsoft Teams

### IDEs
[ ] Sublime
[ ] Atom
[ ] VScode

### Bundle
[ ] Anaconda

## How to Run
To run the playbook if the password isn't on ansible_sudo_pass variable, on inventory/hosts:

```bash
ansible-playbook -i inventory/hosts playbooks/main.yml -K
```

If the password is present on hosts:

```bash
ansible-playbook -i inventory/hosts playbooks/main.yml
```
