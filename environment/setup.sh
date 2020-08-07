#!/bin/bash

# Linking app folder into ubuntu folder of VM
scp -i "DevOpsStudents.pem" ~/PycharmProjects/NodeJSAWS_Deploy_code/app/ ubuntu@ec2-34-242-19-89.eu-west-1.compute.amazonaws.com

# Linking our provision file into ubuntu folder of VM
scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@34.242.19.89:~/app/

# When the provision file is executed, ssh into VM
ssh -i "DevOpsStudents.pem" ubuntu@ec2-34-242-19-89.eu-west-1.compute.amazonaws.com
