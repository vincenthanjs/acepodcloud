#!/bin/bash

yum install php-gd -y
service httpd restart
cd ~
wget http://wordpress.org/latest.tar.gz  --no-check-certificate
tar xzvf latest.tar.gz
rsync -avP ~/wordpress/ /var/www/html/
mkdir /var/www/html/wp-content/uploads
chown -R apache:apache /var/www/html/*
