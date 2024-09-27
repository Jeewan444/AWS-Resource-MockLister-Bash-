# AWS Service SimuLister

### Author: Jeewan Kumar Thakur

## Project Overview

I made a Bash script to list AWS resources like EC2, S3, and Lambda. It uses AWS commands and can handle errors for wrong inputs. I tested the script using BATS to check that it functions correctly and can simulate AWS responses without needing actual access. I also followed good practices in coding, like checking inputs and organizing the script.


### The script supports the following AWS services:
- EC2
- S3
- IAM
- Route53
- CloudWatch
- Lambda
- we can add more services as well.

This project includes unit tests using **BATS** (Bash Automated Testing System) to validate the functionality of the script.

---

## Features

- Simulate listing of AWS resources using mock AWS CLI commands.
- Supports multiple AWS services.
- Implements error handling and input validation.
- Unit tests with BATS for reliable performance.
- No actual AWS access required, making it ideal for training and development.

---

### skills Highlighted
1. Technologies: Bash, AWS CLI, BATS (Bash Automated Testing System)
2. Skills: Shell Scripting, Automation, Cloud Infrastructure, Testing, Error Handling, Mock Simulations

 ![preview img](/preview4.png)

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Project Setup](#project-setup)
3. [Usage](#usage)
4. [Testing](#testing)
5. [Project Structure](#project-structure)
6. [License](#license)

---

## Prerequisites

Before running this project, ensure that you have the following software installed on your system:

1. **Bash**: This script is written in Bash, so you need a Unix-like environment (Linux, macOS, or WSL on Windows).
2. **AWS CLI**: Even though this project simulates AWS services, the AWS CLI needs to be installed to validate commands.
   - Installation guide: [AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
3. **BATS**: The BATS framework is required for running unit tests.
   - Installation guide: [BATS Installation](https://bats-core.readthedocs.io/en/stable/installation.html)

---

## Project Setup

### 1. Clone the Repository
First, clone the repository to your local machine:

```bash
git clone https://github.com/jeewan444/aws-resource-mocklister.git 
cd aws-resource-mocklister
```

---
### 2.Ensure Executable Permissions


Make sure the main script aws_resource_list.sh is executable:
```bash
chmod +x aws_resource_list.sh
```

---
### 3. Install AWS CLI
If you don't already have the AWS CLI installed, follow the [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

### 4. Install BATS for Testing
Follow the BATS installation guide to install BATS[BATS Installation](https://bats-core.readthedocs.io/en/stable/installation.html) for unit testing.<br>
If you are using Mac and encounter problem while installing , dont worry , just disable whatever it asks and re-install . then it will work fine.

### Usage
Before running the Script,
the script will take two arguments: i.e <br>

AWS Region: The region to list resources from (e.g., us-east-1).<br>
AWS Service: The AWS service to list resources for (e.g., ec2, s3, etc.).

## Example:

```bash
./aws_resource_list.sh <aws_region> <aws_service>
```
## Sample Commands:

```bash
./aws_resource_list.sh us-east-1 ec2
./aws_resource_list.sh us-east-1 s3
./aws_resource_list.sh us-east-1 rds
```
#### If an invalid service is provided, the script will return an error message:

```bash
./aws_resource_list.sh us-east-1 invalid
```

## Output
The script will display a simulated listing of AWS resources for the specified service and region.

## Testing
Unit tests are written using the BATS framework. They simulate various scenarios to ensure the script behaves as expected.

## Running the Tests
Once BATS is installed, you can run the tests by executing the following command:

```bash
bats tests/test_aws_resource_list.bats
```
This will run all tests, including:

-Valid service (e.g., EC2 and S3)
-Invalid service error handling

## Sample Output:

 ✓ EC2 service mock response <br>
 ✓ S3 service mock response <br>
 ✗ Invalid service response<br>
 
# Project Structure

aws-resource-mocklister/ <br>

  ├── aws_resource_list.sh        # Main script to list AWS resources<br> 
  ├── README.md                   # Project documentation<br></pre>
  └── tests/ <br>
  └── test_aws_resource_list.bats   # Unit tests using BATS<br> 
     
<br>
<br>
<br>
    
--aws_resource_list.sh: The core script for listing AWS resources based on user input.<br>
--tests/test_aws_resource_list.bats: Test cases for validating the script's functionality.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



