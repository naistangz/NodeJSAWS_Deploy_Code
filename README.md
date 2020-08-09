# Running a Node JS Application on AWS EC2 Server 

> Navigate [here](https://github.com/naistangz/Technical_Training/blob/master/docs/Week8_CloudServices/aws.md) for additional information on AWS\
> [Creating an Instance](ec2Instance.md)\
> [Adding Security Groups](ec2Instance.md)\
> [What are Node Modules?](node_modules.md)

1. Git clone this repository:
```bash
$ git clone git@github.com:naistangz/NodeJSAWS_Deploy_Code.git
```

2. Navigate to `NodeJSAWS_Deploy_Code` folder:
```bash
$ cd NodeJSAWS_Deploy_code
```

3. Run the file `alias='./setup.sh`
```bash
$ run
```

## Checklist 
 -[x] App is running on port 80
 -[x] Configure vagrant file to get DB VM set up
 -[x] Get `/posts` working 
 -[x] Configure `provision.sh` file so that IP address is updated when AWS changes Public IP using `public
 