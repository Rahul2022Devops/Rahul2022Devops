FROM centos:latest
WORKDIR /var/www/html
MAINTAINER rahulhasnann@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
