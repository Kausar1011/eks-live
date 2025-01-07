terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket" # Replace with your S3 bucket name
    key            = "eks-cluster/terraform.tfstate" # Path to the state file within the bucket
    region         = "us-east-1" # AWS region of the S3 bucket
}
}
