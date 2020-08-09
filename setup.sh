#!/bin/bash

# Secure copying files (.pem) between local machine and our AWS instance (the ubuntu folder of our VM)
# ~/path/to/key file/to/copy -r recursive option (copying all the contents of directories, including subdirectories) user@ip_address:path/to/file
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/NodeJSAWS_Deploy_code/app/ ubuntu@34.244.97.94:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM 
scp -i ~/.ssh/DevOpsStudents.pem -r ~/PycharmProjects/NodeJSAWS_Deploy_code/environment/app/provision.sh ubuntu@34.244.97.94:/home/ubuntu/

# Connecting to AWS Linux instance using SSH
# When the provision file is executed (./setup.ssh), this will connect to the instance
# dollar sign -> prompt for command
#ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@54.217.5.191 -i $ ./provision.sh
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@34.244.97.94 -i ./environment/app/provision.sh



