FROM alpine:3.19
EXPOSE 3306

RUN apk update && apk upgrade
RUN apk add mysql mysql-client mariadb mariadb-client bash

RUN addgroup mysql mysql
RUN mkdir -p /run/mysqld

COPY tools/init.sh /init.sh
COPY tools/init_wp.sql /
COPY tools/init_root.sql /
COPY tools/wordpress.sql /
COPY conf/my.cnf /etc/my.cnf

CMD bash /init.sh
