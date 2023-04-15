data "terraform_remote_state" "network_details" {
  backend = "s3"
  config = {
    bucket = "john.007-bucket"
    key    = "john.007-network-state"
    region = "ap-south-1"
  }
}

resource "aws_instance" "my_vm" {
  ami                    = var.ami
  subnet_id              = data.terraform_remote_state.network_details.outputs.my_subnet
  key_name               = data.terraform_remote_state.network_details.outputs.key_name
  instance_type          = var.instance_type
  tags 			 = var.ec2_tags
}

