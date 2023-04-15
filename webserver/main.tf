data "terraform_remote_state" "network_details" {
  backend = "s3"
  config = {
    bucket = "john.007-bucket"
    key    = "john.007-network-state"
    region = "ap-south-1"
  }
}

module "webserver" {
  source = "/home/ubuntu/terraform_base/modules"
}

