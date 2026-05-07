module "ec2" {
  source = "../../modules/ec2"

  public_key_path = var.public_key_path
  environment = var.environment
}

resource "local_file" "ansible_inventory" {
  filename = "../../../ansible/inventory/hosts.ini"

  content = <<EOF
  [web]
  ${module.ec2.public_ip} ansible_user=ec2-user ansible_ssh_private_key_file=${var.private_key_path}
  EOF
}