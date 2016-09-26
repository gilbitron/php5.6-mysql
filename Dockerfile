FROM ubuntu:trusty

ENV DEBIAN_FRONTEND=noninteractive

# Install basics
RUN apt-get update
RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:ondrej/php5-5.6 && apt-get update
RUN apt-get install -y --force-yes curl git

# Install MySQL
RUN apt-get install -y mysql-server

# Install PHP 5.6
RUN apt-get install -y --force-yes php5 php5-mysql php5-mcrypt php5-cli php5-gd php5-curl

# Install composer
RUN curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /app
WORKDIR /app

CMD ["vendor/bin/phpunit"]
