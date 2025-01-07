variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM Role ARN for the EKS cluster"
  type        = string
}

variable "node_role_arn" {
  description = "IAM Role ARN for the EKS worker nodes"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the EKS cluster and nodes will be deployed"
  type        = list(string)
}

variable "cluster_sg_id" {
  description = "Security group ID for the EKS cluster"
  type        = string
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
