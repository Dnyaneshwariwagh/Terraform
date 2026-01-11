variable "aws_region" {
  description = "AWS region for backend resources"
  type        = string
  default     = "ap-south-1"
}

variable "state_bucket_name" {
  description = "S3 bucket name for Terraform remote state"
  type        = string
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name for Terraform state locking"
  type        = string
}


