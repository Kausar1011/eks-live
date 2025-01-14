
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the IAM roles"
  type        = map(string)
  default     = {
    Environment = "dev"
    Owner       = "admin"
  }
}
