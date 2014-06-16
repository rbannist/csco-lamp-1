###################
# Cisco LAMP Demo #
###################

FROM ubuntu

MAINTAINER rbannist

RUN apt-get update

RUN apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ADD index.html /var/www/index.html

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

EXPOSE 80

