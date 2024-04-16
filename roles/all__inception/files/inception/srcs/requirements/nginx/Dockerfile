#Definir Alpine comme image de base
FROM alpine:3.14
EXPOSE 443

RUN apk update && apk upgrade
RUN apk add nginx openssl

RUN mkdir -p /var/www/html
RUN mkdir -p /etc/nginx/ssl/private
RUN mkdir -p /etc/nginx/ssl/certs

RUN openssl req -x509 -nodes -newkey rsa:2048 \
-keyout /etc/nginx/ssl/private/mlabouri.key \
-out /etc/nginx/ssl/certs/mlabouri.crt \
-days 365 -subj '/C=FR/ST=75/L=Paris/O=42/CN=mlabouri'

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD nginx -g 'daemon off;'
