variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16"
  
}
variable "vpc_tag" {
    type = map(any)
    default = {
      Name = "tf-example"
    }
  
}
variable "subnet_cidr" {
  type = string
  default = "172.16.10.0/24"
  
}
variable "subnet_name" {
  type = map(any)
  default = {
    Name = "tf-example"
  } 
}

variable "sg_name" {
  type = map(any)
  default = {
    Name = "allow_tls"
  }
}

variable "nic_name" {
  type = map(any)
  default = {
    Name = "mynic"
  }
}
variable "private_ips" {
type = list(string)
  default = ["172.16.10.100"]
}
variable "instance_name" {
  type = map(any)
  default = {
    Name = "Prod_Server"
  } 
  
}
variable "instance_ami" {
  type = string
  default = "ami-0dee22c13ea7a9a67"
  
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}

// creating mutiple resources
# step1:
# create a variable as below

variable "instance_config" {
  type = map(any)

}
