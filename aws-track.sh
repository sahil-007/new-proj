#!/bin/bash
##############################
#author :Sahil TK
#version:v1
############################
#
#

fgf
date>>backup
set -x
echo "print the s3 ";
aws s3 ls >> backup
echo "print the instances";
aws ec2 describe-instances|jq '.Reservations[].Instances[].InstanceId' >> backup
echo "print the lambda function";
aws lambda list-functions >> backup
echo "print IAM user"
aws iam list-users >> backup
