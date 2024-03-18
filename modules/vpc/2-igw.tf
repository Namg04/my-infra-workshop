resource "aws_internet_gateway" "my-infra-igw" {
    vpc_id = aws_vpc.my-infra-vpc.id

    tags = {
        Name                = "${var.project_name}-igw"
        created_with        = "Terraform"
        Date_of_Creation    = var.Date_of_Creation
    }
}