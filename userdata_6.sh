#Updating OS, Installing Apache HTTP Server, PHP, and necessary modules, Starting and Enabling Apache, Downloading and Setting up WordPress, Configuring Permissions, Restarting Apache

#!/bin/bash

dnf update -y
dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
systemctl start httpd
systemctl enable httpd
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
cd /var/www/html/
cp wp-config-sample.php wp-config.php
chown -R apache /var/www
chgrp -R apache /var/www
chmod 775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
systemctl restart httpd