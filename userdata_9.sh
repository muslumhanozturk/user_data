#Updating OS, Installing Apache HTTP Server and wget, Downloading HTML and Image Files, Enabling and Starting Apache Service

#!/bin/bash

yum update -y
yum install -y httpd
yum install -y wget
chkconfig httpd on
cd /var/www/html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/local/index.html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/local/Local.jpg
service httpd start