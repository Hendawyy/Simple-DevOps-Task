#!/bin/bash

# Update package repository
sudo apt update && sudo apt upgrade -y

# Install Apache, Docker, Docker Compose
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql docker.io php
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql
sudo systemctl status apache2
sudo systemctl status mysql


# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

# Add user to the docker group
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock


cat /var/www/html/index.html
sudo rm -rf /var/www/html/index.html
