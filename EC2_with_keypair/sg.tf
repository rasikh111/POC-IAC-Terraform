resource "aws_security_group" "sg_tf" {
  name        = "my-sg"
  description = "Security group with dynamic ingress rules"

  dynamic "ingress" {
    for_each = var.allowed_ports
    iterator = port
    content {
      description = "Allow TCP port ${port.value}"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
