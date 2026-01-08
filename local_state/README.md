# Terraform Projects

This repository contains small Terraform projects and examples created to practice and demonstrate Infrastructure as Code (IaC) concepts using Terraform.

## Project Structure
```text
Terraform/
└── local_state/
└── main.tf
```

### local_state
- This project demonstrates creating an **AWS EC2 instance** using Terraform.
- Terraform is configured to use **local state** (state files are intentionally not committed).
- Only Terraform configuration files are version-controlled.

## 🛠 Tools & Technologies
- Terraform
- AWS (EC2)
- Git & GitHub

## ⚙️ What This Project Does
- Uses the AWS provider
- Launches a Free Tier–eligible EC2 instance (`t3.micro`)
- Applies basic tagging to the instance
- Follows best practices by excluding Terraform state files from Git

## State Management
Terraform state files (`terraform.tfstate`) are kept local and excluded from version control to avoid exposing sensitive infrastructure details.

## How to Use
```bash
cd local_state
terraform init
terraform plan
terraform apply
```
## Result
After successfully applying the Terraform configuration, an EC2 instance will be created and visible in the AWS Management Console under the EC2 service.
