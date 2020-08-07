# AWS Intro and Deployment

### Useful Commands 
```bash
ssh -o "IdentitiesOnly yes" -i ~/.ssh/DevOpsStudents.pem ubuntu@54.247.25.118
```

```bash
$ scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@54.247.25.118:~/app/
```
The `scp` command stands for **scp**(secure copy). The `scp` command allows secure transferring of files in between the local host and the remote host or between two remote hosts

`-i` sets the `<identity_file` variable as the complete path to, and file name of the private SSH key file
