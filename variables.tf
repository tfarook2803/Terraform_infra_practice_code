variable "key_pair" {
    description = "key pair to login to the instance"
    type = string
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "aws_region" {
  type = string
}

variable "env" {
  type = string
}