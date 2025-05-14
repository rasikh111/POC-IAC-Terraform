resource "aws_security_group" "allow-tls" {
  name        = "allow-tls"
  description = "Allow TLS inbound traffic and outbound traffic"
  vpc_id      = "vpc-029dc565b76c1f181"

  tags = {
    Name = "allow-tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls" {
  security_group_id = aws_security_group.allow-tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow-tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
