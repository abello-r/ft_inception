#!/bin/sh

# Iniciar mariadb
openrc
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb start

# Silenciar openrc issues
sed -i "s/group_add_service/#group_add_service/"

# Crear archivo de configuracion
cat << EOF > /tools/init.sql
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;
EOF

# Crear database de wordpress
mysql < tools/init.sql

#mysql -u root --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < tools/wordpressdb.sql

mysql_secure_installation <<EOF
$MYSQL_ROOT_PASSWORD
n
y
$MYSQL_ROOT_PASSWORD
$MYSQL_ROOT_PASSWORD
y
y
y
y
EOF
