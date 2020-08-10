#!/bin/bash

# Secure copying files (.pem) between local machine and our AWS instance (the ubuntu folder of our VM)
# ~/path/to/key file/to/copy -r recursive option (copying all the contents of directories, including subdirectories) user@ip_address:path/to/file
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/NodeJSAWS_Deploy_code/app/ ubuntu@3.250.30.246:/home/ubuntu/

# Linking our environment-db into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/NodeJSAWS_Deploy_code/environment/db ubuntu@34.250.34.22:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM 
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/NodeJSAWS_Deploy_code/environment/app ubuntu@3.250.30.246:/home/ubuntu/environment

# Connecting to AWS Linux instance using SSH
# When the provision file is executed (./setup.ssh), this will connect to the instance
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@3.250.30.246 -i ./environment/app/provision.sh

# Accessing DB VM
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@34.250.34.22 -i ./environment/db/provision.sh



