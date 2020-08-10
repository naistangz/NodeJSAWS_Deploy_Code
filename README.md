# Running a Node JS Application on AWS EC2 Server :taco: :taco: :taco: test jenkins 21

> Navigate [here](https://github.com/naistangz/Technical_Training/blob/master/docs/Week8_CloudServices/aws.md) for additional information on AWS\
> [Creating an Instance](ec2Instance.md)\
> [Adding Security Groups](ec2Instance.md)\
> [What are Node Modules?](node_modules.md)\
> Extended documentation [here](extended_doc.md)

1. Git clone this repository:
```bash
$ git clone git@github.com:naistangz/NodeJSAWS_Deploy_Code.git
```

2. Navigate to `NodeJSAWS_Deploy_Code` folder:
```bash
$ cd NodeJSAWS_Deploy_code
```

3. Run the file `alias run='./setup.sh`
```bash
$ run
```

4. You will see a response like the following:
```bash
The authenticity of host 'ec2-198-51-100-1.compute-1.amazonaws.com (198-51-100-1)' can't be established.
ECDSA key fingerprint is l4UB/neBad9tvkgJf1QZWxheQmR59WgrgzEimCG6kZY.
Are you sure you want to continue connecting (yes/no)?
```

5. Enter `yes`\
Which returns the following:
```bash
Warning: Permanently added 'ec2-198-51-100-1.compute-1.amazonaws.com' (ECDSA) to the list of known hosts.
```

# Setting up MongoDB Server
1. Create `DB` directory
2. In `DB` directory, create `mongod.service` and `mongo.conf` files
3. Create `provision.sh` script to install MongoDB
```bash
#!/bin/bash

# be careful of these keys, they will go out of date
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update -y
sudo apt-get upgrade -y

# sudo apt-get install mongodb-org=3.2.20 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# remove the default .conf and replace with our configuration

# Here we have changed the path of mongod.conf because ino ur VM there is no environments folder, only a db folder
sudo rm /etc/mongod.conf
sudo ln -s /home/ubuntu/db/mongod.conf /etc/mongod.conf

# if mongo is is set up correctly these will be successful
sudo systemctl restart mongod
sudo systemctl enable mongod
```

4. Create an EC2 Instance for MongoDB Server.
5. Create a security group in order to allow inbound rules from the app server (instance).
6. In bash, manually run the DB server using the following command:
```bash
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@34.250.34.22 -i ./environment/db/provision.sh
```
7. Run the `provision.sh` script when the DB server is up
8. To check `mongodb` is installed, run the following command:
```bash
sudo systemctl status mongod
```
9. Access the app vm in a new terminal window by running the following command:
```bash
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@3.250.30.246 -i ./environment/app/provision.sh
```

10. Type `env` to export IP address then type the following (this can be automated by adding to `provision.sh`)
```bash
export DB_HOST=mongodb://34.250.34.22:27017/posts
```

11. Navigate to `cd /app` folder and run `npm install`
```
npm install
```

12. Run `provision.sh` file 
13. Navigate to `cd app/` folder and run app with the following command:
```bash
pm2 start app.js -f
```

13. Enter app IP address into browser to check if `/posts` is working

:taco:

 
