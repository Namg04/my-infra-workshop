# Create S3 Bucket and DynamoDB table to store state and state lock.
resource "aws_s3_bucket" "bucket" {
    bucket = "my-infra-bucket-terraform-state"

    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }

    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}