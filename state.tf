terraform {
  backend "s3" {
    bucket = "terraform-bh"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
