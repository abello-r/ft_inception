FROM alpine:3.14

# Install all dependencys
RUN	apk update && \
	apk add nginx && \
	apk add openssl

# Create nginx directory
RUN	mkdir -p /run/nginx && \
	chmod 755 /run/nginx

# Create html directory
COPY /requeriments/nginx/tools/index.html /var/www/html/

# Conf ssl certificate
RUN	chmod 700 /etc/ssl/private && \
		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/nginx_server.key -out /etc/ssl/certs/nginx_server.crt && \
	openssl dhparam -out /etc/nginx/dhparam.pem 1000

# Upload new conf
COPY /requeriments/nginx/tools/nginx.conf /etc/nginx/
COPY /requeriments/nginx/tools/default.conf /etc/nginx/http.d/

# Ports availables
EXPOSE 443

# Start nginx services
CMD ["nginx", "-g", "daemon off;"]

