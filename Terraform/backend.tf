terraform {
  backend "s3" {
    bucket  = "terraform-state-v1"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}




