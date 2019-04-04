FROM wordpress:php7.2-fpm

# Install wp-cli
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /bin/wp-cli.phar
RUN cd /bin && mv wp-cli.phar wp

# Instal mysql client
RUN apt-get update && apt-get install mysql-client -y

# Note: Use docker-compose up -d --force-recreate --build when Dockerfile has changed.
