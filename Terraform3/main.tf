module "aws_vpc" {
 source = "./modules/aws_vpc" 
 vpc_cidr = var.vpc_cidr
 vpc_tag = var.vpc_tag
}


module "aws_subnet" {
 source = "./modules/aws_subnet"
 vpc_id = module.aws_vpc.vpc_id
 subnet_cidr= var.subnet_cidr
 subnet_name = var.subnet_name

}

module "aws_sg" {
 source = "./modules/aws_sg" 
 vpc_id = module.aws_vpc.vpc_id
 sg_name = var.sg_name
 
}

module "aws_nic" {
source     = "./modules/aws_nic" 
subnet_id   = module.aws_subnet.subnet_id
private_ips = var.private_ips
nic_name    = var.nic_name
}

module "aws_instance" {
 source = "./modules/aws_instance" 
 instance_ami = var.instance_ami
 instance_type = var.instance_type
 nic_id = module.aws_nic.nic_id
 instance_name  = var.instance_name

}
/*
module "aws_instance_us-east" {
 source = "./modules/aws_instance" 
 //mutiple region
 providers = {
    aws = aws.us-east-1
 }
 instance_ami = var.instance_ami
 instance_type = var.instance_type
 nic_id = module.aws_nic.nic_id
 instance_name  = var.instance_name

}


*/
# step3: create the multiple instances
/*
module "aws_nic" {
source     = "./modules/aws_nic" 
for_each = var.instance_config
subnet_id   = module.aws_subnet.subnet_id
private_ips = each.value.private_ips
nic_name    = each.value.nic_name
}

module "aws_instance" {
 source = "./modules/aws_instance"
 depends_on = [
      module.nic
]
 for_each = var.instance_config 
 instance_ami = each.value.instance_ami
 instance_type = each.value.instance_type
 nic_id = module.aws_nic[each.key].nic_id
 instance_name  = each.value.instance_name

}
*/






