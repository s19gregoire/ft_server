echo "Creation of phpmyadmin and wordpress install"
echo "step 1 : initialize permission on the docker"
chown -R www-data /var/www/*
chmod -R 755 /var/www/*
echo "step 2 : download phpmyadmin"
mkdir /var/www/html/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz && tar -xvf phpMyAdmin-5.1.0-all-languages.tar.gz --strip-components 1 -C /var/www/html/phpmyadmin
mv /phpmyadmin.php /var/www/html/phpmyadmin/config.inc.php
mkdir /var/www/html/phpmyadmin/tmp
chmod 777 /var/www/html/phpmyadmin/tmp
echo "step 3 : wordpress installer \n"
wget -c https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress/ /var/www/html
mv wp-config.php /var/www/html/wordpress