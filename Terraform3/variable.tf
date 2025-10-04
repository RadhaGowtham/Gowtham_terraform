variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16"
  
}
variable "vpc_tag" {
    type = string
    default = "tf-example"
  
}
variable "subnet_cidr" {
  type = string
  default = "172.16.10.0/24"
  
}
variable "subnet_name" {
  type = string
  default = "tf-example"
}

variable "sg_name" {
  type = string
  default = "allow_tls"
}

variable "nic_name" {
  type = string
  default = "mynic"
}
variable "private_ips" {
type = list(string)
  default = ["172.16.10.100"]
}
variable "instance_name" {
  type = string
  default = "Prod_Server"
  
}
variable "instance_ami" {
  type = string
  default = "ami-0dee22c13ea7a9a67"
  
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}

