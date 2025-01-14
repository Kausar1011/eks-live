variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "my-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
  default     = "vpc-0e55bae2861c33828" # Updated VPC ID
}

variable "cluster_role_arn" {
  description = "IAM Role ARN for the EKS cluster"
  type        = string
  default     = "arn:aws:iam::423623842683:role/cluster_role"

}

variable "node_role_arn" {
  description = "IAM Role ARN for the EKS worker nodes"
  type        = string
  default     =  "arn:aws:iam::423623842683:role/worker-node"
                          
}

variable "subnet_ids" {
  description = "List of subnet IDs where the EKS cluster and nodes will be deployed"
  type        = list(string)
  default     = [
    "subnet-000d2c85eb4c3802b", # Private Subnet 1
    "subnet-01f4f392c50a9be67", # Private Subnet 2
    "subnet-016953a10fe799255", # Public Subnet 1
    "subnet-0e01483cbe21b0060"  # Public Subnet 2
  ]
}

variable "desired_size" {
  description = "Desired number of worker nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes in the EKS node group"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Minimum number of worker nodes in the EKS node group"
  type        = number
  default     = 1
}
