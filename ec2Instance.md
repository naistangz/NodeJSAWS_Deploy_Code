# Creating an Instance 
> [What is an Amazon EC2 instance?](https://github.com/naistangz/Technical_Training/blob/master/docs/Week8_CloudServices/aws.md)

### Tasks
1. Create an AWS account [here](https://aws.amazon.com/)
2. [Launch an Instance](#launch-an-instance)
3. [Connect to Your Instance](#connecting-to-your-instance)

## Launch an Instance
1. Open the [Amazon EC2 Console](https://console.aws.amazon.com/ec2/)
2. Specify the Availability Zone in which you would like your instance to run.

![change_location](./images/change_location.png)
3. From the console dashboard, choose **Launch Instance**

![instances_launch](./images/instances_launch_instance.png)

4. The **Choose an Amazon Machine Image (AMI)** page displays a list of basic configurations, called *Amazon Machine Images(AMIs)*, that serve as templates for your instance. Select an instance.

![choose_ami](./images/choose_AMI_ubuntu.png)
5. Select the hardware configuration. The `t2.micro` instance type is eligible for the free tier.

![choose_instance](./images/choose_instance_type.png)

6. Configure Instance Details 

![configure_instance](./images/configure_instance_details.png)

7. Add storage (selected by default)

![add_storage](./images/add_storage.png)

8. Add tags with clear descriptions
> [What is a tag?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)

![add_tags](./images/add_tags.png)

9. Configure Security. By default, the wizard has created and selected a security group for you. You can use this security group, or alternatively you can select the security group that you created when getting set up. Then, click **Review Instance Launch**

![configure_security](./images/configure_security_group.png)

10. Finally, choose **Launch Instances**