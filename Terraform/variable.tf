variable "ami" {
description = "ami-id"
type = string
default = "ami-0360c520857e3138f"
}
variable "instance_type" {
description = "instance_type"
type = string
default = "t2.micro"
}
variable "key_name" {
description = "key_name"
type = string
default = "devops@2025"
}
variable "tag" {
description = "tag"
type = string
default = "jenkins_server"
}
