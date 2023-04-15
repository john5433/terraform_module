terraform {
  backend "s3" {
    bucket = "john.007-bucket"
    key    = "john.007-instance-state"
    region = "ap-south-1"
  }
}

