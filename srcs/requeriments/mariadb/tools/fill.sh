#!/bin/sh

sed -i "s/mysql_user/$MYSQL_USER/g" /etc/mysql/configbase.sql

/etc/init.d/mariadb setup > mdb_output.txt

