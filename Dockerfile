FROM centos:latest
RUN yum install httpd -y
COPY test.html /var/www/html
CMD ["/usr/sbin/httpd",-D","FOREGROUND"]
EXPOSE 80
