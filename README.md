# Running a Node JS Application on AWS EC2 Server 

> Navigate [here](https://github.com/naistangz/Technical_Training/blob/master/docs/Week8_CloudServices/aws.md) for additional information on AWS [TBC]\
> [Creating an Instance](ec2Instance.md)

## Connecting to your Instance
1. From the console dashboard, select Instance, then click on **Connect**
![connect_instance](./images/connect_instance.png)
2. Follow the instructions by typing the commands in Terminal or Git Bash:
![connect_to_instance_details](./images/connection_details_instance.png)
3. Navigate to the folder 
```bash
cd NodeJSAWS_Deploy_Code
```
4. Connect to your instance using its Public DNS:
```bash
$ ssh -i "DevOpsStudents.pem" ubuntu@ec2-54-247-25-118.eu-west-1.compute.amazonaws.com
```
5. If successful, the commands should return:
```bash
Your app is ready and listening on port 3000
```
6. Enter your Public IP address in the browser.
7. Remember to disconnect from your Instance by navigating to **Instance State** then clicking on **Stop** or **Terminate**

