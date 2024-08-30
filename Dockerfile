FROM docker.io/ubuntu
RUN  apt-get update -y && 
     apt-get install apache2 -y
COPY . /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
