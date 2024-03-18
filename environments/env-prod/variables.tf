variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "my_project_name" {
  type    = string
  default = "prod-project"
}
variable "eks_cluster_name" {
  type = string
  default = "prod-cluster"
}