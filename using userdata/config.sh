#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "my name is venkteh" > /var/www/html/index.ngnix-debian.html
