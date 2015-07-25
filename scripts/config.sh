#!/usr/bin/env bash

echo "export MYSQL_PASSWORD=phanbook" >>/etc/profile

echo "export DB_NAME=phanbook" >> /etc/profile

echo "export ROOT_DIR=/usr/share/nginx/html/www/" >> /etc/profile


source /etc/profile
