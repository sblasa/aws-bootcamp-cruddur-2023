# Week 10 — CloudFormation Part 1


Properties  in Cloudformation are really just outputted into JSON

Properties : {VpcID:  {Ref: "VPC"}}

Convenience functions

```
  AttachIGW:
    Type: AWS::EC2::VPCGatewayAttachment
    Properties:
      VpcId: !Ref VPC
      InternetGatewayId: !Ref IGW
```


You can write JSON inline as well.

!Ref is a function that is called, and returns the value of  the Id of the resource that was declared earlier in the stack or yml file.

Names should be as concise as possible since there is a limit.

Also, comment in relevant documentation so you can reference them later in your cfn template.

Remember to export/define the cfn bucket before running cfn template

You can check the availbility zones in your region by running this command:

aws ec2 describe-availability-zones --region us-west-2

aws ec2 describe-availability-zones --region <your region name>

Learned about  >  folding notation which allows you to use as a single line


Make sure to change the username and password for connection URL for RDS database
