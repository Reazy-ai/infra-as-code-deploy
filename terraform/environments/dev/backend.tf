terraform {
  backend "s3" {
    bucket = "ridwan-terraform-state-bucket"
    region = "eu-west-2"
    key = "dev/terraform-state"
    dynamodb_table = "terraform_state_locks"
    encrypt = true
  }
}