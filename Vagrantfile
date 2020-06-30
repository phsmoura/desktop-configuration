# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "desktop" do |desktop|
    desktop.vm.box = "ubuntu/bionic64"
    desktop.vm.box_check_update = false

    desktop.vm.hostname = "desktop"
    desktop.vm.network "private_network",ip: "192.168.200.10", dns:"8.8.8.8"

    desktop.vm.provider "virtualbox" do |vb|
      vb.memory = 5120
      vb.cpus = 2
    end
    config.vm.provision "file", source: "playbooks", destination: "/home/vagrant/"
    config.vm.provision "file", source: "roles", destination: "/home/vagrant/"
    config.vm.provision "file", source: "install_ansible.sh", destination: "/home/vagrant/"
    config.vm.provision "shell", inline: <<-SHELL
    sudo bash /home/vagrant/install_ansible.sh
    sudo add-apt-repository ppa:gnome3-team/gnome3
    sudo apt-get update
    sudo apt-get install gnome-shell ubuntu-gnome-desktop -y
    sudo cp -a /home/vagrant/roles /etc/ansible
    SHELL
  end
end