FROM alpine:3.14
EXPOSE 9000

RUN apk update && apk upgrade
RUN apk add php7 php7-fpm php7-opcache \
php7-common php7-iconv php7-json php7-gd php7-curl \
php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap \
php7-ctype php7-dom php-mysqli php7-fpm php7-session

RUN mkdir -p /var/www/html/
ADD config/latest.tar.gz /var/www/html/

COPY config/www.conf /etc/php7/php-fpm.d/www.conf
COPY config/wp-config.php /var/www/html/wordpress/wp-config.php
COPY config/init.sh /init.sh

CMD sh /init.sh
