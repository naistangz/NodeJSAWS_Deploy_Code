#!/bin/bash

# setting up
sudo apt-get update -y

# installing nginx
sudo apt-get install nginx -y

# configuring nginx
sudo unlink /etc/nginx/sites-enabled/default

# Navigating to nginx config folder
cd /etc/nginx/sites-available

# Deleting default file
sudo rm -rf default

# Creating new file
sudo touch default

# Changing permission
sudo chmod 666 reverse-proxy.conf

# inserting server information into the connection file
echo "server{
  listen 80;
  server_name development.local;
  location / {
      proxy_pass http://127.0.0.1:3000;
  }
}" > reverse-proxy.conf

# recreating connection to database with new file(default without explicit statement)
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf

# restarting nginx
sudo systemctl stop nginx
sudo systemctl start nginx
#sudo service nginx restart

# install node modules
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install npm -y

# Installs the npm dependencies
#export DB_HOST=mongodb://ubuntu@54.154.53.144:27017/posts?authSource=admin
export DB_HOST=mongodb://34.250.34.22:27017/posts
echo $DB_HOST
sudo apt-get update
cd /home/ubuntu/app
sudo npm install pm2 -g
npm install
pm2 stop all
pm2 start app.js -f
