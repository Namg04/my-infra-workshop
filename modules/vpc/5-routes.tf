resource "aws_route_table" "private_route_table_1" {
    vpc_id = aws_vpc.my-infra-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nat_az1.id

    }

    route {
        cidr_block = var.vpc_cidr
        gateway_id = "local"
    }

    tags = {
        Name = "private_route_table_1"
        created_with = "Terraform"
    }
  
}

resource "aws_route_table_association" "private_subnet_az1_route_table_association" {
    subnet_id       = aws_subnet.private_subnet_az1.id
    route_table_id  = aws_route_table.private_route_table_1.id

}

resource "aws_route_table" "private_route_table_2" {
    vpc_id = aws_vpc.my-infra-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nat_az2.id
    }

    route {
        cidr_block = var.vpc_cidr
        gateway_id = "local"
    }

    tags = {
        Name = "private_route_table_2"
    }
  
}

resource "aws_route_table_association" "private_subnet_az2_association" {
    subnet_id       = aws_subnet.private_subnet_az2.id
    route_table_id  = aws_route_table.private_route_table_2.id

}

resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.my-infra-vpc.id

    route {
        cidr_block = "0.0.0.0/16"
        gateway_id = aws_internet_gateway.my-infra-igw.id
    }
    

    tags = {
        "Name"          = "public_route_table"
        created_with    = "Terraform"
    }

}

resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
    subnet_id       = aws_subnet.public_subnet_az1.id
    route_table_id  = aws_route_table.public_route_table.id

}

resource "aws_route_table_association" "public_subnet_az2_route_table_association" {
    subnet_id       = aws_subnet.public_subnet_az2.id
    route_table_id  = aws_route_table.public_route_table.id

}