#!/bin/bash

# Install script for Ansible

echo "#### Python package install ####"
pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "#### ansible-galaxy collection install ####"
ansible-galaxy collection install -r requirements.yml

echo ""
if [ $? -eq 0 ]; then
  echo "Install OK 🎉"
else
  echo "Failed 😢"
fi
