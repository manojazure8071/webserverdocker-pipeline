FROM httpd
RUN apt-get install httpd wget unzip -y
RUN systemctl enable httpd
RUN systemctl start httpd
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page283/moto.zip
RUN cp -rp moto-html/* /var/www/html/
CMD httpd -D FOREGROUND
