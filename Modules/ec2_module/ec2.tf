resource "aws_instance" "web" {
  ami                    = var.ami
  count                  = var.instance_count
  instance_type          = var.type
  vpc_security_group_ids = [aws_security_group.sg_tf.id]

  tags = {
    Name = var.tag
  }
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web[0].public_ip
}
