# terraform-aws-ec2-setup
This Terraform project automates the provisioning of AWS infrastructure, creating a secure VPC, a public subnet, an internet gateway, and an EC2 instance. It enables Docker installation for easy application deployment, ensuring scalability and efficient management through Infrastructure as Code (IaC).
# Terraform Project - AWS EC2 Instance Provisioning

## Project Overview
This Terraform project automates the provisioning of an AWS infrastructure that includes:
- A Virtual Private Cloud (VPC) for resource isolation.
- A public subnet for internet-accessible resources.
- An internet gateway for outbound internet connectivity.
- Route tables to manage network traffic.
- A security group for controlling inbound and outbound traffic.
- An SSH key pair for secure access to EC2 instances.
- An EC2 instance running Ubuntu with Docker pre-installed for application development.

## Prerequisites
- **Terraform**: Install Terraform on your local machine. 
- **AWS CLI**: Set up the AWS CLI with your credentials.
- **SSH Key Pair**: Create an SSH key pair for accessing the EC2 instance. Ensure the public key is added to the `aws_key_pair` resource.

## Configuration Files
- **main.tf**: Contains the main configuration for AWS resources.
- **providers.tf**: Specifies the provider and region configuration for AWS.
- **outputs.tf**: Defines output values for your infrastructure (e.g., instance public IP).
- **variables.tf**: Contains variable definitions for customizable configurations.
- **terraform.tfvars**: Specifies values for the variables defined in `variables.tf`.
- **windows-ssh-config.tpl**: A template for creating an SSH config file on Windows.
- **userdata.tpl**: A script executed on instance launch to install Docker.
- **datasources.tf**: Configuration to retrieve the latest Ubuntu AMI.

## Getting Started

### Step 1: Clone the Repository
```bash

## Commands
Here are the commands to execute in the command prompt for managing the Terraform project:

```bash
terraform init           # Initializes the Terraform working directory and downloads the required providers.
terraform validate       # Validates the configuration files in the directory.
terraform plan           # Creates an execution plan, showing what actions will be taken without applying changes.
terraform apply          # Applies the changes required to reach the desired state of the configuration.
terraform destroy -auto-approve # Destroys the Terraform-managed infrastructure without prompting for confirmation.

Important Notes
Ensure your AWS credentials are configured correctly in ~/.aws/credentials.
Adjust the providers.tf file for your specific AWS profile and region.
Modify the userdata.tpl file as needed for additional setup tasks after the EC2 instance is launched.

References
For more information on Terraform commands and usage, refer to the [Terraform documentation](https://developer.hashicorp.com/terraform/docs).

