variable "cluster_name" {
  description = "Name of the EKS cluster, used for tagging and resource naming"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all IAM resources"
  type        = map(string)
}
