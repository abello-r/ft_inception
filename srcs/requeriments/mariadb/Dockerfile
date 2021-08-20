FROM alpine:3.14

# Environment vars
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD
ARG	MYSQL_DATABASE

# Install dependencies
RUN	apk update && apk upgrade && apk add --update --no-cache \
	mariadb \
	mariadb-client \
	openrc

COPY	tools/ /tools/
RUN	sh /tools/init_db.sh

EXPOSE 3306

CMD	["./tools/run_mb.sh"]
