terraform {
    backend "s3" {
        bucket = "my-infra-bucket-terraform-state"
        key    = "us-east-1/env-dev/terraform.tfstate"
        region =  "us-east-1"
        dynamodb_table = "my-infra-workshop-table"
    }
}


