FROM alpine:3.14

RUN	apt update && \
	apt install php-fpm -y && \ 
	apt-get install -y wget


RUN	wget https://es.wordpress.org/latest-es_ES.tar.gz && \
	tar -xzvf latest-es_ES.tar.gz


RUN	rm -rf latest-es_ES.tar.gz

CMD	service php-fpm start
