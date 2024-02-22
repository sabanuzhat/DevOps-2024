FROM amazonlinux
MAINTAINER vivektech.kumar@gmail.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -R oxer-html/* .
RUN rm -rf oxer.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
expose 80
