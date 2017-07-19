FROM occitech/cakephp:5-apache
MAINTAINER Luke Strickland (@clone1018)

# Setup initial PHP requirements
RUN \
    apt-get update && \
    apt-get install libldap2-dev -y && \
    apt-get install mysql-client -y && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap

COPY . /usr/src/calendar/
WORKDIR /usr/src/calendar
RUN rm -Rf /var/www/html
RUN ln -s /usr/src/calendar/webroot /var/www/html

RUN composer install

# RUN cp config/app.default.php config/app.php