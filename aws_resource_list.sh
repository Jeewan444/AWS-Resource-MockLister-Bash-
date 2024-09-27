#!/bin/bash

###############################################################################
# Author: Jeewan Kumar Thakur
# Version: v0.0.1

# This is the Script to automate the process of listing all the resources in an AWS account
#
# Below are the services that are supported by this script:
# 1. EC2
# 2. S3
# 3. IAM
# 4. Route53
# 5. CloudWatch
# 6.lambda


# The script will prompt the user to enter the AWS region and the service for which the resources need to be listed.
#
# Usage: ./aws_resource_list.sh  <aws_region> <aws_service>
# Example: ./aws_resource_list.sh us-east-1 ec2
#############################################################################

# Check if the required number of arguments are passed
if [ $# -ne 2 ]; then
    echo "Usage: ./aws_resource_list.sh <aws_region> <aws_service>"
    echo "Example: ./aws_resource_list.sh us-east-1 ec2"
    exit 1
fi

# Assign the arguments to variables
aws_region=$1
aws_service=$(echo "$2" | tr '[:upper:]' '[:lower:]')

# Simulated function for EC2
mock_ec2() {
    echo "Simulating EC2 Instances in $aws_region"
    echo "Instance ID: i-1234567890abcdef0"
    echo "Instance Type: t2.micro"
    echo "State: running"
}

# Simulated function for S3
mock_s3() {
    echo "Simulating S3 Buckets in $aws_region"
    echo "Bucket: my-test-bucket"
    echo "Creation Date: 2021-09-20"
}

# Simulated function for IAM
mock_iam() {
    echo "Simulating IAM Users in $aws_region"
    echo "User Name: Jeewan Kumar Thakur"
    echo "Creation Date: 2020-10-01"
}

# Simulated function for Lambda
mock_lambda() {
    echo "Simulating Lambda Functions in $aws_region"
    echo "Function Name: my-lambda-function"
    echo "Runtime: python3.8"
    echo "Last Modified: 2021-06-15"
}

# Simulated function for CloudWatch
mock_cloudwatch() {
    echo "Simulating CloudWatch Alarms in $aws_region"
    echo "Alarm Name: HighCPUUsage"
    echo "State: OK"
}

# Simulated function for Route53
mock_route53() {
    echo "Simulating Route53 Hosted Zones in $aws_region"
    echo "Hosted Zone: jeewankumar.com"
    echo "Record Count: 5"
}


# Main case statement for selecting AWS service
case $aws_service in
    ec2)
        mock_ec2
        ;;
    s3)
        mock_s3
        ;;
    iam)
        mock_iam
        ;;
    lambda)
        mock_lambda
        ;;
     cloudwatch)
        mock_cloudwatch
        ;;
    route53)
        mock_route53
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac

log_file="aws_resource_list.log"

log() {
    local level="$1"
    shift
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$level] - $*" >> "$log_file"
}

display_logs() {
    echo "Last 10 log entries:"
    tail -n 10 "$log_file"
}



