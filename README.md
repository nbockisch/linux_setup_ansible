# Linux Setup
This is an ansible playbook to install and configure the setup I use. It's meant for the Arch and Parabola Linux distributions.

## Requirements
The target host must have the following installed:
   * Python 3+
   * openssh

The host deploying the playbook (which could be the target host) requires:
   * Ansible
   * Python 3+
   * git (For cloning this repo)
   * openssh

## Setup and running
   * Edit `ansible_playbook/vars` to have the username(s) of the user account(s) you wish to create
   * Edit `ansible_playbook/vars` to have the path to your dotfiles repo
   * Edit `ansible_playbook/vars` to have the names of the directories you want to stow in your dotfiles repo
   * Add all the hostnames of the target machines under the `[pc]` group in `ansible_playbook/hosts`
   * Add your ssh key to the root account on all the target hosts
   * Start the sshd service on all the target hosts
   * Run `ansible-playbook -i hosts deploy.yml` on the deploying host
