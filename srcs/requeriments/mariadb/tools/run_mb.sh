#!/bin/sh

/usr/bin/mysqld --user=mysql --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --pid-file=/run/mysqld/mariadb.pid --port=3306 --log-error=/var/log/mysqld.log --log-warnings=4 --skip-networking=0

