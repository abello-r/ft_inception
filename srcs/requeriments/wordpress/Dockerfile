FROM alpine:3.14

# Env
ARG	DB_NAME
ARG	DB_USER
ARG	DB_PASSWORD

# New directory
RUN	mkdir var/www && \
	mkdir var/www/html && \
	chmod 755 var && \
	chmod 755 var/www && \
	chmod 755 var/www/html

# FTP
COPY	tools/wp-config.php /var/www/html/wordpress/
COPY	tools/init_env.sh /var/www/html/wordpress/

# Exec var script
RUN	chmod 777 /var/www/html/wordpress/init_env.sh && \
	./var/www/html/wordpress/init_env.sh

# Install all dependencies
RUN	apk update && \
	apk add php7 php7-fpm php7-opcache php-mysqli php php-phar php-curl php-dom php-exif php-fileinfo php-json php-mbstring php-sodium php-openssl php-xml php-zip && \
	apk add wget && \
	apk add vim && \
	apk add --no-cache tar && \
	apk add openrc

# Install and decompress wordpress
RUN	wget https://es.wordpress.org/latest-es_ES.tar.gz && \
	tar -xzvf latest-es_ES.tar.gz && \
	mv wordpress/* var/www/html/wordpress && \
	rm -rf wordpress

# Remove wordpress package
RUN	rm -rf latest-es_ES.tar.gz

RUN echo "listen = 9000" >> /etc/php7/php-fpm.d/www.conf

# Listening
EXPOSE 9000

# Php-fpm service start

#CMD	rc-update add php-fpm7 default

CMD ["/usr/sbin/php-fpm7", "--nodaemonize"]

