#!/bin/bash
hostnamectl set-hostname docker_instance
dnf update -y                  
dnf install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
# install docker-compose
curl -SL https://github.com/docker/compose/releases/download/v2.17.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
dnf install git -y
TOKEN=${user-data-git-token}         # user_data = base64encode(templatefile("userdata.sh", {user-data-git-token = var.git-token, user-data-git-name = var.git-name}))
USER=${user-data-git-name}
cd /home/ec2-user && git clone https://$TOKEN@github.com/$USER/bookstore-api.git
cd /home/ec2-user/bookstore-api
