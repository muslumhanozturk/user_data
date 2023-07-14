#Updating Apache HTTP server, downloading an HTML file and a cat image from an S3 bucket, and starting the server

#!/bin/bash

yum update -y
yum install -y httpd
cd /var/www/html
aws s3 cp s3://osvaldo-pipeline-production/index.html .
aws s3 cp s3://osvaldo-pipeline-production/cat.jpg .
systemctl enable httpd
systemctl start httpd 