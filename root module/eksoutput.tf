# eksoutput.tf

output "eks_cluster_role_arn" {
  description = "The ARN of the EKS Cluster IAM Role"
  value       = module.iam.aws_cluster_role_arn
}

output "eks_worker_node_role_arn" {
  description = "The ARN of the EKS Worker Node IAM Role"
  value       = module.iam.node_role_arn
}

output "eks_cluster_role_name" {
  description = "The name of the EKS Cluster IAM Role"
  value       = module.iam.aws_cluster_role_name
}

output "eks_worker_node_role_name" {
  description = "The name of the EKS Worker Node IAM Role"
  value       = module.iam.worker_node_role_name
}
