vpc_cidr = "172.16.0.0/16"
vpc_tag = {
    Name = "terraform-demo-vpc"
}
subnet_cidr = "172.16.10.0/24"
subnet_name = {
 Name = "subnet1"
}
sg_name = {
       Name = "allow_tls"
}
nic_name = {
    Name = "devnic"
}
private_ips = ["172.16.10.100"]

instance_name = {
    Name = "Prod_Server"
}
instance_ami = "ami-0dee22c13ea7a9a67"
instance_type = "t2.micro"

/*
# step2: creating two instances
instance_config = {
    instance_1 = {
        nic_name = {
    Name = "prodnic1"
    private_ips = ["172.16.10.100"]
    instance_name = {
       Name = "Prod_Server1"
}
    instance_ami = "ami-0dee22c13ea7a9a67"
    instance_type = "t2.micro"
}

}
    instance_2 = {
    nic_name = {
    Name = "prodnic2"
    private_ips = ["172.16.10.101"]
    instance_name = {
       Name = "Prod_Server2"
}
    instance_ami = "ami-0dee22c13ea7a9a67"
    instance_type = "t2.micro"
}
    }
}
*/
