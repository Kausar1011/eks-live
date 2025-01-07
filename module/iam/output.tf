output "cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_role_arn" {
  description = "ARN of the IAM role for the EKS worker nodes"
  value       = aws_iam_role.eks_node_role.arn
}
