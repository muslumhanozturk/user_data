#Updating OS, Installing Apache HTTP Server and wget, Downloading HTML and Image Files, Starting and Enabling Apache

#!/bin/bash

yum update -y
yum install -y httpd
yum install -y wget
cd /var/www/html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/N.virginia_1/index.html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/N.virginia_1/N.virginia_1.jpg
systemctl start httpd
systemctl enable httpd