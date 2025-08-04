variable "region" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "ami" {
  type = string
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
variable "allowed_ports" {
  description = "List of allowed ingress ports"
  type        = list(number)
}

