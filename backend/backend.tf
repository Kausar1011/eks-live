terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-kausar"   # Replace with your S3 bucket name
    key    = "terraform/state.tfstate"     # Path within the bucket to store the state file
    region = "us-west-1"                   # AWS region for the S3 bucket
  }
}
