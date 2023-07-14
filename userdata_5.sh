#Updating OS, Installing Nginx, Installing wget, Enabling Nginx, Modifying Permissions, Downloading HTML and Image Files, Starting Nginx

#!/bin/bash

yum update -y
yum install nginx -y
yum install -y wget
systemctl enable nginx
cd /usr/share/nginx/html
chmod o+w /usr/share/nginx/html
rm index.html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/index.html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53/master/ken.jpg
systemctl start nginx