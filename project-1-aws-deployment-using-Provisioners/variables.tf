variable "region" {
  description = "name of region"
}
variable "instance_type" {
   description = "value for instance type"
   default = "t2.micro"
}

variable "ami_id" {
   description = "value for ami-id"
}

variable "key_name" {
   description= "value for key name"
}

variable "sg_name" {
  description = "Name for security group"
}

variable "pub_sub" {
  description = "value for subnet id"
}
