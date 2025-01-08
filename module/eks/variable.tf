
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "my-eks-cluster"
}
  
variable "vpc_id" {
  description = "EKS cluster vpc id"
  type        = string
  default     = "aws_vpc.main.id"
}


variable "cluster_role_arn" {
  description = "IAM Role ARN for the EKS cluster"
  type        = string
  default     = "arn:aws:iam::123456789012:role/EKS-ClusterRole" # Replace with your actual ARN
}

variable "node_role_arn" {
  description = "IAM Role ARN for the EKS worker nodes"
  type        = string
  default     = "arn:aws:iam::123456789012:role/EKS-NodeRole" # Replace with your actual ARN
}

variable "subnet_ids" {
  description = "List of subnet IDs where the EKS cluster and nodes will be deployed"
  type        = list(string)
  default     = ["subnet-0a1b2c3d4e5f6g7h8", "subnet-1a2b3c4d5e6f7g8h9"] # Replace with your subnet IDs
}

variable "cluster_sg_id" {
  description = "Security group ID for the EKS cluster"
  type        = string
  default     = "sg-0a1b2c3d4e5f6g7h8" # Replace with your security group ID
}

variable "desired_size" {
  description = "Desired number of worker nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes in the EKS node group"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "Minimum number of worker nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}
