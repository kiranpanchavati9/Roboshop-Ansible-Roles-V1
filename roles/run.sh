#!/bin/bash
COMPONENT=$1
# Check if the file exists (handles both .yml and .yaml)
if [ -f "/root/Ansible/Ansible-RoboShop-V1/${COMPONENT}.yml" ]; then
    FILE="${COMPONENT}.yml"
else
    FILE="${COMPONENT}.yaml"
fi

ansible-playbook "/root/Ansible/Ansible-RoboShop-V1/$FILE" -e "ansible_password=K25&e1\2QGhd9rM"