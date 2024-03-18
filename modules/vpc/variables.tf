variable "environment" {
    type    = string
}

variable "project_name" {
    type        = string
    default     = "my-infra-workshop"
    description = "name of your project"
}

variable "aws" {
    type        = string
    default     = "us-east-1"
    description = "define the region for your vpc"
}

variable "vpc_cidr" {
    type        = string
    default     = "10.0.0.0/16"
    description = "defines cidr range for vpc"
}

variable "public_subnet_az1_cidr" {
    type        = string
    default     = "10.0.1.0/24"
    description = "cidr range for public subnet AZ1"
}

variable "public_subnet_az2_cidr" {
    type        = string
    default     = "10.0.2.0/24"
    description = "cidr range for public subnet AZ2"
}

variable "private_subnet_az1_cidr" {
    type        = string
    default     = "10.0.3.0/24"
    description = "cidr range for private subnet AZ1"
}

variable "private_subnet_az2_cidr" {
    type        = string
    default     = "10.0.4.0/24"
    description = "cidr range for private subnet AZ2"
}

variable "Date_of_Creation" {}

variable "enable_dns_hostnames" {
    description = "Should be true to enable DNS hostnames in the VPC"
    type        = bool
    default     = true
}

variable "enable_dns_support" {
    description = "Should be true to enable DNS support in the VPC"
    type      = bool
    default    = true
}