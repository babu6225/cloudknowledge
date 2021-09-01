FROM centos:latest
MAINTAINER magadheerat10@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/soul.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip soul.zip
RUN cp -rvf markup-kindle/* .
RUN rm -rf _MACOS markups-soul soul.zip
CMD ["/usr/sbin/httpd", "_D", "FOREGROUND"]
EXPOSE 80
