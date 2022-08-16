#!/bin/bash

project_url='https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip';

# system update, upgrade and install dependencies
apt update;
apt upgrade -y;
apt install apache2 unzip wget -y;

# get project
echo "Download and unpack project"
wget $project_url -P /tmp;
unzip /tmp/main.zip -d /tmp;

echo "Move to Apache2 folder"
mv -f /tmp/linux-site-dio-main/* /var/www/html
mv -f /tmp/linux-site-dio-main/.* /var/www/html

echo "Start web server"
service apache2 start;