resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file(var.ssh_public_key_path)
}

resource "aws_instance" "web" {
  ami                    = lookup(var.ami, var.region)
  count                  = var.instance_count
  instance_type          = var.type
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.sg_tf.id]

  tags = {
    Name = var.tag
  }
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web[0].public_ip
}
