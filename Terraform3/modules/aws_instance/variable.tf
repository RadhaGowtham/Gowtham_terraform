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
variable "nic_id" {
  type = string
}
