variable "subnet_id" {
  type = string
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
