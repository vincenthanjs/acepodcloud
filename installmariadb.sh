#!/bin/bash

yum install mariadb-server mariadb -y
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
