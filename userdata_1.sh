#Automated Setup Script for Apache Web Server with Custom Homepage

#! /bin/bash
#update os
yum update -y
#install apache server
yum install -y httpd
# get date and time of server
DATE_TIME=`date`
# create a custom index.html file
echo "<html>
<head>
    <title> My First Web Server</title>
</head>
<body>
    <h1>Hello to Everyone from My First Web Server</h1>
    <p>This instance is created at <b>$DATE_TIME</b></p>
</body>
</html>" > /var/www/html/index.html
# start apache server
systemctl start httpd
systemctl enable httpd