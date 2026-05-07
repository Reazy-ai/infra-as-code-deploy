module "ec2" {
  source = "../../modules/ec2"
  
  public_key_path = var.public_key_path
  environment = var.environment
}