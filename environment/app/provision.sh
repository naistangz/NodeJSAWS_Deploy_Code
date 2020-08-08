#!/bin/bash

# setting up
sudo apt-get update -y

# installing nginx
sudo apt-get install nginx -y

# configuring nginx
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default

# creating symbolic link between nginx.default and ubuntu folder of VM
sudo ln -s /home/ubuntu/environment/app/nginx.default /etc/nginx/sites-available/default

# restarting nginx
sudo service nginx restart

# install node modules
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install npm -y

# Install the npm dependencies
cd /home/ubuntu/app
sudo npm install
sudo npm install pm2 -g

# pm2 is a process manager, it manages your applications states
pm2 stop all
pm2 start app.js -f
node app.js

