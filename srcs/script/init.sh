apt-get update && apt-get install -y procps && apt-get install nano && apt-get install -y wget
apt-get install dialog apt-utils -y
apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap
apt-get -y install wget
apt-get -y install nginx
apt-get -y install mariadb-server
service php7.3-fpm start
service mysql start
bash ssl_generate.sh
service nginx start
bash apply_conf.sh
bash mysql_createdb.sh
rm -rf /etc/nginx/sites-enabled/default
mv nginx.conf /etc/nginx/sites-enabled/
nginx -s reload
bash