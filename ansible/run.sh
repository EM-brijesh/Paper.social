#!/bin/bash

# Install Ansible if not installed
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y ansible
fi

# Install required Ansible roles
ansible-galaxy install -r requirements.yml

# Get EC2 instance IP from Terraform output
EC2_PUBLIC_IP=$(cd ../infra && terraform output -raw instance_public_ip)

# Export the IP for Ansible
export EC2_PUBLIC_IP

# Run the playbook
ansible-playbook -i inventory.yml playbook.yml 