# Use a base image
FROM ubuntu:latest

# Maintainer information
MAINTAINER Hezam <hezam1404@gmail.com>

# Update the package manager and install dependencies
RUN apt-get update \
    && apt-get install -y apache2 mysql-server

# Set the working directory
WORKDIR /var/www/html

# Set environment variables
ENV DATABASE_HOST=localhost \
    DATABASE_PORT=3306

# Add files from the host to the container
ADD config.php /var/www/html/config.php

# Copy files from the host to the container
COPY index.html /var/www/html/index.html

# Create a volume for persistent data
VOLUME /var/lib/mysql

# Switch to a non-root user
USER www-data

# Expose port 80 for web traffic
EXPOSE 80

# Define the default command when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
