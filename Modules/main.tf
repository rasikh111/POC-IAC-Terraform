module "ec2_instance" {
  source         = "./ec2_module"
  region         = var.region
  accesskey      = var.accesskey
  secretkey      = var.secretkey
  instance_count = var.instance_count
  ami            = var.ami
  type           = var.type
  tag            = var.tag
  allowed_ports  = var.allowed_ports
}
