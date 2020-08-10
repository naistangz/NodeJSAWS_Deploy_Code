# Extended Documentation [TBC]

## What is NodeJs
- A JavaScript runtime environment, a component of a development platform that allows developers to test a software program while it is running
- This simulates how the program will behave once it has been executed, so any bugs or errors can be tracked and fixed.
- `Node.js` runs a programming construct called `event loop` which waits for client requests then sends them to the server or database.
- It provides an event driven, non-blocking asynchronous runtime environment meaning your application does not have to wait around for an initial operation to complete before it can respond to another event. 
- It can instead queue callbacks in the event loop in the order it receives them, and perform other processes.

## Asynchronous Programming 
- An asynchronous model allows multiple things to happen at the same time. 
- When you start an action, your program continues to run. 
- When the action finishes, the program is informed and gets access to the result.

## Linking to our AWS EC2 Instance
# Manual Method
**1.** We will require a [private key](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) which will let us enter our EC2 instance.
**2.** Use the following `SSH command` to connect to the instance:
```bash
ssh -i /path/my-key-pair.pem ec2-user@public_dns_name
```

Which will return the following response:
```bash
The authenticity of host 'ec2-198-51-100-1.compute-1.amazonaws.com (198-51-100-1)' can't be established.
ECDSA key fingerprint is l4UB/neBad9tvkgJf1QZWxheQmR59WgrgzEimCG6kZY.
Are you sure you want to continue connecting (yes/no)?
```

**3.** Enter `yes` which will return:
```bash
Warning: Permanently added 'ec2-198-51-100-1.compute-1.amazonaws.com' (ECDSA) to the list of known hosts.
```

## Error:292
If `events.js:292` error occurs, type the following:
```bash
killall -9 node
```

Then run app again 
```bash
node app.js
```