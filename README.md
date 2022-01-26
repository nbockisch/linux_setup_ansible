# Dot Files
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
   * Edit `ansible_playbook/user_vars` to have the username of the user account you wish to create
   * Add all the hostnames of the target machines under the `[user_machines]` variable in `ansible_playbook/user_vars`
   * Add your ssh key to the root account on all the target hosts
   * Start the sshd service on all the target hosts
   * Run `ansible-playbook -i hosts deploy.yml` on the deploying host
