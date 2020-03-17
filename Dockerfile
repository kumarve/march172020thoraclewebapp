FROM fedora
# it will be the base image
MAINTAINER kumar.venkatraman@oracle.com
# developer info
RUN yum install httpd -y
# it will install httpd server
WORKDIR /var/www/html
# this is changing my current working directory to document root of application server
COPY . .
# copy the file
EXPOSE 80
# it will tell docker image to use 80 port for application server
#CMD httpd -DFOREGROUND
# it will sart parent process as httpd application server
ENTRYPOINT httpd -DFOREGROUND
#same as cmd but we can not replace it by argument

