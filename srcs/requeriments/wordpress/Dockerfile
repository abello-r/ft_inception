FROM alpine:3.14

# Env
ARG	DB_NAME
ARG	DB_USER
ARG	DB_PASSWORD


RUN	export a=$DB_NAME && \
	export b=$DBUSER && \
	export c=$DB_PASSWORD


# Install all dependencies
RUN	apk update && \
	apk add php-fpm && \
	apk add wget && \
	apk add vim && \
	apk add --no-cache tar

# Install and decompress wordpress
RUN	wget https://es.wordpress.org/latest-es_ES.tar.gz && \
	tar -xzvf latest-es_ES.tar.gz

# Remove wordpress package
RUN	rm -rf latest-es_ES.tar.gz

# FTP
COPY	/requeriments/wordpress/tools/wp-config.php /wordpress/

# Save env script
COPY	/requeriments/wordpress/tools/init_env.sh /wordpress/
#CMD	sh /wordpress/init_env.sh



# Init services
#CMD	service php-fpm start
