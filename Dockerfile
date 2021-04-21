FROM debian:buster

ARG DEBIAN_FRONTEND=noninteractive
COPY ./srcs/script/init.sh ./
COPY ./srcs/script/mysql_createdb.sh ./
COPY ./srcs/script/ssl_generate.sh ./
COPY ./srcs/script/apply_conf.sh ./
COPY ./srcs/conf/nginx.conf ./
COPY ./srcs/script/indexoff.sh ./
COPY ./srcs/script/indexon.sh ./
COPY ./srcs/conf/phpmyadmin.php ./
COPY ./srcs/conf/wp-config.php ./
CMD bash init.sh