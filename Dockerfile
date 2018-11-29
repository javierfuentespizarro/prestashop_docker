FROM geerlingguy/php-apache:latest
RUN apt-get update && apt-get install -y unzip php libapache2-mod-php php-cli php-mysql php-mcrypt php-zip php-ldap php-curl php-gd php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap php-intl curl
RUN a2enmod rewrite
# Descargar PrestaShop
ADD https://www.prestashop.com/download/old/prestashop_1.7.4.4.zip /var/www/html
RUN cd /var/www/html && unzip prestashop_1.7.4.4.zip && rm prestashop_1.7.4.4.zip && chown -R www-data:www-data /var/www/htm
