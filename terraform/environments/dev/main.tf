module "ec2" {
  source = "../../modules/ec2"

  public_key_path = file(var.public_key_path)
  environment = var.environment
}