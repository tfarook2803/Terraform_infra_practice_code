#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

sudo yum install docker -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
mkdir /home/ec2-user/jenkins_home
docker run -d -p 8080:8080 -p 50000:50000 -v /home/ec2-user/jenkins_home:/var/jenkins_home jenkins