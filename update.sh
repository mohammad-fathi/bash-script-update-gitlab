#!/bin/bash

# Create a backup before updating
echo "Creating a backup..."
sudo gitlab-backup create STRATEGY=copy

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Upgrade GitLab CE
echo "Upgrading GitLab CE..."
sudo apt-get install -y gitlab-ce

echo "Update process completed."