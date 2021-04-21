# ft_server
docker build -t test .
docker run --name test -it -p 80:80 -p 443:443 test
