resource "aws_vpc" "my-infra-vpc" {
    cidr_block            = var.vpc_cidr
    instance_tenancy      = "default"
    enable_dns_hostnames  = var.enable_dns_hostnames
    enable_dns_support    = var.enable_dns_support

    tags = {
      Name              = "my-infra-vpc"
      environment       = var.environment
      created_with      = "Terraform"
      Date_of_Creation  = var.Date_of_Creation
    }
}