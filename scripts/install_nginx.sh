#!/bin/bash

# Update the package list
sudo yum update -y

# Install nginx using Amazon Linux Extras
sudo amazon-linux-extras install nginx1 -y

# Enable nginx to start on boot
sudo systemctl enable nginx
