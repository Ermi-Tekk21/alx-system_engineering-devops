#!/usr/bin/env bash

# Install ufw
sudo apt-get install ufw

# Enable IPv6 support in ufw
sudo sed -i 's/IPV6=.*/IPV6=yes/' /etc/default/ufw

# Display ufw status
sudo ufw status

# Enable ufw
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific TCP ports
sudo ufw allow 22/tcp
sudo ufw allow 443/tcp
sudo ufw allow 80/tcp
