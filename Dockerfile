FROM centos:latest
MAINTAINER sirajrazvi
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-cse.com/assets/files/free-css-templates/download/pag258/loxury.zip /var/www/html
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury  loxury.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
