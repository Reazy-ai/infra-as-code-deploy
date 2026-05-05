variable "aws_region" {
  description = "AWS region"
  type = string
  default = "eu-west-2"
}

variable "s3_bucket_name" {
  description = "S3 bucket for terraform state"
  type = string
  default = "ridwan-terraform-state-bucket"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table for state locking"
  type = string
  default = "terraform_state_locks"
}