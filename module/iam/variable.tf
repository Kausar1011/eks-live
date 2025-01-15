variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = aws_cluster
}

variable "tags" {
  description = "Tags to apply to the IAM roles"
  type        = map(string)
  default     = {
    Environment = "dev"
    Owner       = "admin"
  }
}

# Real ARN for the EKS cluster role
variable "cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  type        = string
  default     = "arn:aws:iam::123456789012:role/cluster-role"
}

# Real ARN for the EKS worker node role
variable "node_role_arn" {
  description = "ARN of the IAM role for the EKS worker nodes"
  type        = string
  default     = "arn:aws:iam::123456789012:role/worker-node"
}
