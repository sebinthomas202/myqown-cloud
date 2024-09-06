#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install snapd if not installed
sudo apt install snapd -y

# Install Nextcloud
sudo snap install nextcloud

# Install and configure Nextcloud (commands might vary)
sudo nextcloud.manual-install <username> <password>
sudo nextcloud.occ config:system:set trusted_domains 0 --value=<your-ec2-public-ip>
sudo nextcloud.occ config:system:set trusted_domains 1 --value=<your-domain>
