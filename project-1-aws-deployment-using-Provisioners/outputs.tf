output "web-link" {
  value = "http://${aws_instance.server.public_ip}"
}
