# Terraform Backend Project

This project bootstraps the **Terraform remote backend infrastructure** in AWS, providing:

- An **S3 bucket** for storing Terraform state files  
- A **DynamoDB table** for state locking  

This setup allows other Terraform projects to safely store their state remotely and collaborate without conflicts.

---

## Project Structure
```text
terraform-backend/
├── main.tf # Resources for S3 bucket and DynamoDB table
├── variables.tf # Variables (e.g., AWS region)
├── outputs.tf # Output resource information
├── terraform.tfstate # Local state (before backend is used)
├── s3.md # Detailed guide for setting up remote backend

```
---

## Getting Started

### 1. Bootstrap the Backend (Run Once)

1. Navigate to the backend project:

```bash
cd terraform-backend
```

Initialize Terraform (local state is used initially):
```bash
terraform init
```
Review and apply:
```bash
terraform plan
terraform apply
```

⚠️ Note: This will create the S3 bucket and DynamoDB table. Run this only once per AWS account. Do not delete or manually modify these resources.

2. Use the Backend in Other Terraform Projects

After creating the backend, other Terraform projects can configure the remote backend by creating a backend.tf file.

Refer to s3.md
 for the detailed step-by-step guide.



