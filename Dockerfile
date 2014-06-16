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
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERADMIN admin@localhost
ENV APACHE_DOCUMENTROOT /var/www
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

CMD ["rm /var/www/html/index.html"]

ADD index.html /var/www/index.html

# CMD ["sudo apache2ctl start"]
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

EXPOSE 80
