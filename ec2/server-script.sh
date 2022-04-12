#!/bin/bash
sudo apt update
sudo apt install -y nginx-light
sudo systemctl start nginx
sudo systemctl enable nginx
echo "<h1>Hello from Terraform</h1>" | sudo tee /var/www/html/index.html