mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/ssl_cert.pem -keyout /etc/nginx/ssl/ssl_key.key -subj "/C=BE/ST=Lasne/L=Bruxelles/O=s19/OU=gneve/CN=certid"