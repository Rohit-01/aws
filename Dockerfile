FROM almalinux:8
LABEL maintainer="M Rohit Singha gusionfusion009@gmail.com"
RUN yum install -y httpd zip unzip
COPY photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip "photogenic.zip"
RUN rm -rf "photogenic.zip"
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22 443
