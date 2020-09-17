# Desktop Configuration
This repository configures the user's machine with Ansible.
Scripts on this repo were tested on the following OS:
- [x] Ubuntu 20.04
- [ ] Debian
- [ ] Fedora
- [ ] CentOS

## Getting Started
This repository, in addition to the roles and playbooks used by Ansible, there is also a Vagrantfile that has the purpose of creating a test environment to run Ansible scripts.

### Prerequisites
Para poder rodar o Vagrantfile é necessário ter instalado o **VirtualBox** e o **Vagrant**. Há a possibilidade de utilizar outros virtualizadores, mas isso pode levar na alteração do Vagrantfile.

- [VirtualBox Instalation](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant Instalation](https://www.vagrantup.com/intro/getting-started/install.html)

### Installing Ansible
Being on VM or not, it's necessary to install Ansible. Run the script "install_ansible.sh" on this repo:

```bash
$ bash install_ansible.sh
```

## Running Ansible
To run the playbook if the password isn't on ansible_sudo_pass variable, on inventory/hosts:

```bash
ansible-playbook localhost playbooks/main.yml -K
```

If the password is present on hosts:

```bash
ansible-playbook localhost playbooks/main.yml
```
