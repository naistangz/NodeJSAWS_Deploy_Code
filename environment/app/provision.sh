#!/bin/bash

# setting up
sudo apt-get update -y

# installing nginx
sudo apt-get install nginx -y

# configuring nginx
sudo unlink /etc/nginx/sites-enabled/default
cd /etc/nginx/sites-available
sudo touch default
sudo chmod 666 default
echo "server{
  listen 80;
  server_name development.local;
  location / {
      proxy_pass http:/34.244.97.94:3000;
  }
}" >> default
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
sudo systemctl stop nginx
sudo systemctl start nginx
# restarting nginx
#sudo service nginx restart

# install node modules
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install npm -y

# Install the npm dependencies
cd home/ubuntu/app
sudo npm install
sudo npm install pm2 -g

# pm2 is a process manager, it manages your applications states
pm2 stop all
pm2 start app.js -f
node app.js

