FROM centos:latest
MAINTAINER aurkude857@gmail.com
RUN yum install -y httpd \
  zip \
  unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip canvas.zip
RUN cp -rvf canvas/* .
RUN rm -rf canvas canvas.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
