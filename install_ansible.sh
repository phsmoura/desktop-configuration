#!/bin/bash

source /etc/os-release

case $ID in
  # install ansible on ubuntu
  ubuntu)
  sudo apt update

  # installing dependencies for ansible
  sudo apt install openssh-server -y
  sudo apt install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt install ansible -y
  ;;

  # install ansible on debian
  debian)
  # installing dependencies for ansible
  sudo apt install openssh-server -y
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
  sudo apt update
  sudo apt install ansible
  ;;

  # install ansible on fedora
  fedora)
  sudo dnf install ansible -y
  ;;

  centos)
  sudo yum install ansible -y
  ;;

  *)
  echo "Invalid ID on /etc/os-release
  The ID should be <ubuntu|debian|fedora|centos>"
  ;;
esac

sudo cp -a roles /etc/ansible/
