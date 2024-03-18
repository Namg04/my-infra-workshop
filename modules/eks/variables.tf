
variable "environment" {
  type = string
  default = "demo"
}

variable "project_name" {
    type        = string
    default     = "my-infra-workshop"
    description = "name of your project"
}

variable "region" {
  type = string
  default = "us-east-1"
  description = "defines the region for your resources"
}


variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "defines cidr range for vpc"
}

#subnet cidr
variable "public_subnet_az1_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "public_subnet_az2_cidr" {
  type = string
  default = "10.0.2.0/24"
}

variable "private_subnet_az1_cidr" {
  type = string
  default = "10.0.3.0/24"
}

variable "private_subnet_az2_cidr" {
  type = string
  default = "10.0.4.0/24"
}

variable "Date_of_Creation" {
  type = string
  default = "17/03/2024"
}