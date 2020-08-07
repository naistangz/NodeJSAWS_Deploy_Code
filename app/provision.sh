#!/bin/bash

# update
sudo apt-get update

# install nginx
sudo apt-get install nginx

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
npm install express
npm install mongoose

# scp secure transferring copy
scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@54.247.25.118:~/app/

