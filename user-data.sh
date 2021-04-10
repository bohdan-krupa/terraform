#!/bin/bash

########################################################
##### USE THIS FILE IF YOU LAUNCHED AMAZON LINUX 2 #####
########################################################

# get admin privileges
sudo su

# install httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service

echo "<h2>Hello, World from $(hostname -f)</h2><br><p>Build by Terraform! Version 3.0<p>" > /var/www/html/index.html