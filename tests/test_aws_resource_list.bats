#!/usr/bin/env bats

@test "EC2 service mock response" {
    result="$(./aws_resource_list.sh us-east-1 ec2)"
    [[ "$result" == *"Simulating EC2 Instances"* ]]
}

@test "S3 service mock response" {
    result="$(./aws_resource_list.sh us-east-1 s3)"
    [[ "$result" == *"Simulating S3 Buckets"* ]]
}

@test "Invalid service response" {
    run ./aws_resource_list.sh us-east-1 invalid
    [[ "$output" == *"Invalid service. Please enter a valid service."* ]]
    [ "$status" -eq 1 ]
}

