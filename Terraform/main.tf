
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform_state_v1"  # Make sure this name is globally unique!

  versioning {
    enabled = true
  }
}

}
resource "aws_instance" "jenkins" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  key_name      = "devops@2025"

  tags = {
    Name = "jenkins_server"
  }
}
