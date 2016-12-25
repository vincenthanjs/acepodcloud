#!/bin/bash

yum install wget rsync -y

yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service

yum install php php-mysql mariadb -y
systemctl restart httpd.service

wget https://raw.githubusercontent.com/vincenthanjs/acepodcloud/master/info.php -O /var/www/html/serverinfo.php

setsebool -P httpd_can_network_connect_db 1
