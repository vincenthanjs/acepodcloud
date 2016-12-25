#!/bin/bash

yum install wget rsync -y

yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service

yum install php php-mysql -y
systemctl restart httpd.service


