#Now, we need to create four subnets. To meet EKS requirements,
#We need to have two public and two private subnets in different availability zones

data "aws_availability_zones" "availability_zones" {}

resource "aws_subnet" "private_subnet_az1" {
    vpc_id              = aws_vpc.my-infra-vpc.id
    cidr_block          = var.private_subnet_az1_cidr     
    availability_zone   = data.aws_availability_zones.availability_zones.names[0]

    tags = {
        "Name"                              = "private-subnet-az1"
        "kubernetes.io/role/internall-elb"  = "1"
        "kubernetes.io/cluster/demo"        = "owned"
    }
  
}

resource "aws_subnet" "private_subnet_az2" {
    vpc_id              = aws_vpc.my-infra-vpc.id
    cidr_block          = var.private_subnet_az2_cidr     
    availability_zone   = data.aws_availability_zones.availability_zones.names[1]

    tags = {
        "Name"                              = "private-subnet-az2"
        created_with                        = "Terraform"
        Date_of_Creation                    = var.Date_of_Creation
        "kubernetes.io/role/internall-elb"  = "1"
        "kubernetes.io/cluster/demo"        = "owned"
    }
  
}

resource "aws_subnet" "public_subnet_az1" {
    vpc_id                     = aws_vpc.my-infra-vpc.id
    cidr_block                 = var.public_subnet_az1_cidr     
    availability_zone          = data.aws_availability_zones.availability_zones.names[0]
    map_public_ip_on_launch    = true

    tags = {
        "Name"                              = "public-subnet-az1"
        created_with                        = "Terraform"
        Date_of_Creation                    = var.Date_of_Creation
        "kubernetes.io/role/internall-elb"  = "1"
        "kubernetes.io/cluster/demo"        = "owned"
    }
  
}

resource "aws_subnet" "public_subnet_az2" {
    vpc_id                     = aws_vpc.my-infra-vpc.id
    cidr_block                 = var.public_subnet_az2_cidr     
    availability_zone          = data.aws_availability_zones.availability_zones.names[1]
    map_public_ip_on_launch    = true

    tags = {
        "Name"                              = "public-subnet-az2"
        created_with                        = "Terraform"
        Date_of_Creation                    = var.Date_of_Creation
        "kubernetes.io/role/internall-elb"  = "1"
        "kubernetes.io/cluster/demo"        = "owned"
    }
  
}