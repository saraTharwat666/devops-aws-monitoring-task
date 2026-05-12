#!/bin/bash
yum update -y

# Install Docker
amazon-linux-extras enable docker
yum install -y docker

systemctl enable docker
systemctl start docker

usermod -aG docker ec2-user

# Install docker-compose (binary)
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose