output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}

output "node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.eks_node_group.node_group_name
}

output "security_group_id" {
  description = "The ID of the security group created for the EKS cluster"
  value       = aws_security_group.eks_sg.id
}

