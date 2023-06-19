#!/bin/bash
sudo yum update -y
sudo yum -y remove httpd
sudo yum -y remove httpd-tools
sudo yum install httpd -y
sudo systemctl enable httpd
sudo yum install -y httpd24 php72 mysql57-server php72-mysqlnd
cd /var/www/html
sudo curl http://169.254.169.254/latest/meta-data/instance-id -o index.html
sudo curl https://raw.githubusercontent.com/hashicorp/learn-terramino/master/index.php -O
sudo systemctl start httpd