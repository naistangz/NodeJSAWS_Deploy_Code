# Running a Node JS Application on AWS EC2 Server 

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

## Checklist 
 -[x] App is running on port 80
 -[x] Configure vagrant file to get DB VM set up
 -[x] Get `/posts` working 
 -[x] Configure `provision.sh` file so that IP address is updated when AWS changes Public IP using `public
 