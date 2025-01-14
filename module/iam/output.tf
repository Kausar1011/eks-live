output "cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  value       = var.cluster_role_arn
}

output "node_role_arn" {
  description = "ARN of the IAM role for the EKS worker nodes"
  value       = var.node_role_arn
}
