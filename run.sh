#!/bin/bash

# Simple runner for Roboshop Ansible playbooks
# Usage: ./run.sh frontend | mongodb

COMPONENT=$1

if [ -z "$COMPONENT" ]; then
  echo "Usage: ./run.sh <frontend|mongodb>"
  exit 1
fi

PLAYBOOK="playbooks/${COMPONENT}.yml"

if [ ! -f "$PLAYBOOK" ]; then
  echo "❌ Playbook not found: $PLAYBOOK"
  exit 1
fi

echo "🚀 Running playbook: $PLAYBOOK"
ansible-playbook -i inventory "$PLAYBOOK"
