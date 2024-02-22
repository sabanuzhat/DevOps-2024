FROM centos:latest
MAINTAINER vivektech.kumar@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -R __MACOSX  markups-kindle/*
RUN rm -rf kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
expose 80
