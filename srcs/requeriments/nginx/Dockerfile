FROM alpine:3.14

# Install all dependencys
RUN	apk update && \
	apk add nginx

# Create nginx directory
RUN	mkdir -p /run/nginx && \
	chmod 755 /run/nginx

# Create html directory
COPY tools/index.html /var/www/html/

# Upload new conf
COPY tools/nginx.conf /etc/nginx/
COPY tools/default.conf /etc/nginx/http.d/

# Ports availables
EXPOSE 80
EXPOSE 443

# Start nginx services
CMD ["nginx", "-g", "daemon off;"]

