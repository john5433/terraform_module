variable "ami" {
  default = "ami-06984ea821ac0a879"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name = "john.007-vm1"
    Environment = "testing"
  }
}

