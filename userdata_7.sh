#Updating OS, Installing MariaDB 10.5 Server, Starting and Enabling MariaDB

#!/bin/bash

dnf update -y
dnf install mariadb105-server -y
systemctl start mariadb
systemctl enable mariadb