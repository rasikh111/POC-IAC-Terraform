provider "aws" {
  access_key = var.accesskey
  secret_key = var.secretkey
  region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file(var.ssh_public_key_path)
}

resource "aws_instance" "web" {
  ami           = lookup(var.ami, var.region)
  count = var.instance_count
  instance_type = var.type
  key_name               = aws_key_pair.deployer.key_name
  
  tags = {
    Name = var.tag
	}
}
