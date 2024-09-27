#!/bin/bash

# Check if the required number of arguments are passed
if [ !$# -ne 2 ]; then
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
    echo "User Name: john_doe"
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
    echo "Hosted Zone: mydomain.com"
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
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

# Example usage:
log "Listing EC2 Instances in $aws_region"
mock_ec2
log "Listing s3 buckets in $aws_region"
mock_s3
log "Listing iam users in $aws_region"
mock_iam
log "Listing lambda functions in $aws_region"
mock_lambda
log "Listing cloudwatch alarms in $aws_region"
mock_cloudwatch
log "Listing hosted zones in $aws_region"
mock_route53


