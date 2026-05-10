module "ec2" {
  source = "../../modules/ec2"

  public_key_path = file("${path.module}/keys/ansibleSSHkey.pub")
  environment = var.environment
}