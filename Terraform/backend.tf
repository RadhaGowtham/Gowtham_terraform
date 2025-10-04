terraform {
  backend "s3" {
    bucket  = "terraform-state-rrg"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}




