terraform {
  backend "s3" {
    bucket = "terraform-bucket"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
