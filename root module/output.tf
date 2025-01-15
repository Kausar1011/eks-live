output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_sg_id" {
  value = module.vpc.eks_cluster_sg_id 
}

output "cluster_role_arn" {
  value = module.iam.eks_cluster_role_arn
}

output "cluster_role_name" {
  value = module.iam.eks_cluster_role_name
}

output "worker_node_role_arn" {
  value = module.iam.eks_worker_node_role_arn
}

output "eks_worker_node_role_name" {
  value = module.iam.eks_worker_node_role_name
}

output "eks_cluster_policy_attachment_arn" {
  value = module.iam.eks_cluster_policy_attachment_arn
}

output "eks_vpc_controller_policy_attachment_arn" {
  value = module.iam.eks_vpc_controller_policy_attachment_arn
}

output "eks_worker_node_policy_attachment_arn" {
  value = module.iam.eks_worker_node_policy_attachment_arn
}

output "eks_cni_policy_attachment_arn" {
  value = module.iam.eks_cni_policy_attachment_arn
}

output "cloudwatch_policy_attachment_arn" {
  value = module.iam.cloudwatch_policy_attachment_arn
}

output "eks_ecr_read_only_policy_attachment_arn" {
  value = module.iam.eks_ecr_read_only_policy_attachment_arn
}
