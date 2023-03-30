#!/bin/bash 

# This is a script created to launch EC2 Servers and create the associated Route53 Record 

AMI_ID=$(aws ec2 describe-images --filters "Name=name,Values=DevOps-LabImage-CentOS7" | jq '.Images[].ImageId' )
echo -n "Ami ID is $AMI_ID"