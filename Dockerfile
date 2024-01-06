FROM phpmyadmin:latest

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ports.conf /etc/apache2/ports.conf
RUN chmod 667 /etc/phpmyadmin
EXPOSE 9000
CMD ["apache2-foreground"]
