variable "region" {
  type    = string
}

variable "instance_count" {
  type = number
}

variable "ami" {
  type = map
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
