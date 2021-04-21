sed -i "s/autoindex off;/autoindex on;/g" /etc/nginx/sites-enabled/nginx.conf
nginx -s reload