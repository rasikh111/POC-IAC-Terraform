variable "region" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "ami" {
  type = map(any)
}
variable "type" {
  type = string
}
variable "accesskey" {
  type = string
}
variable "secretkey" {
  type = string
}
variable "tag" {
  type = string
}
variable "ssh_public_key_path" {
}
variable "allowed_ports" {
  description = "List of allowed ingress ports"
  type        = list(number)
}

