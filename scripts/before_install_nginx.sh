#!/bin/bash
echo "Running before install tasks..."

# Update system packages
sudo yum update -y

# Install Amazon Linux Extras if needed (for Amazon Linux 2 only)
if grep -q "Amazon Linux release 2" /etc/system-release; then
  sudo amazon-linux-extras enable nginx1
  sudo amazon-linux-extras install nginx1 -y
else
  # For Amazon Linux 2023 or others with dnf
  sudo dnf install nginx -y
fi

# Enable and start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Nginx installed and started successfully."
