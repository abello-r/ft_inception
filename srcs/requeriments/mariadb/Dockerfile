FROM alpine:3.14

# Environment vars
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD

# Install dependencies
RUN	apk update && \
	apk add --no-cache openrc && \
	mkdir -p /run/openrc && \
	touch /run/openrc/softlevel && \
	apk add vim && \
	apk add mariadb mariadb-client

# Config privileges mysql
COPY	/tools/configbase.sql /etc/mysql
COPY	/tools/fill.sh	/etc/mysql
RUN	/etc/mysql/fill.sh

RUN /bin/sh -c "/usr/bin/mysqld_safe --skip-grant-tables &" && \
  sleep 5 && \
  mysql -u root -e "CREATE DATABASE mydb" && \
  mysql -u root mydb < /tmp/dump.sql


#1 softlevel openrc
#2 /etc/init.d/mariadb setup
#3 rc-service mariadb start
#4 mysqld_safe
#5 mysql -u root < ./etc/mysql/configbase.sql
#6 mysql_secure_instalation
