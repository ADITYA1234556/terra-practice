variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "adi-ec2-instance-tf"
}
variable "AMI" {
  type = map(string)
  default = {
    "ubuntu" = "ami-03ceeb33c1e4abcd1"
    "linux"  = "ami-03c6b308140d10488"
  }
}

variable "KEY_PAIR_NAME" {
  type = string
  default = "adi-laptop-created-key"
}

variable "ENVIRONMENT" {
  type = map(string)
  default = {
    "dev" = "Development"
    "prod" = "Production"
  }
}