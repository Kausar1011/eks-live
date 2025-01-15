output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "aws_eks_cluster_name" {
  value = module.eks.cluster_name
}

output "aws_eks_cluster_sg_id" {
  value = module.vpc.eks_cluster_sg_id 
}

output "aws_cluster_role_arn" {
  value = module.iam.cluster_role_arn 
}

output "aws_cluster_role_name" {
  value = aws_iam_role.aws_cluster_role.name
}

output "worker_node_role_arn" {
  value = module.iam.worker_node_role_arn
}

output "eks_worker_node_role_name" {
  value = module.iam.worker_node_role_name
}

output "cluster_policy_attachment_arn" {
  value = module.iam.cluster_policy_attachment_arn
}

output "vpc_controller_policy_attachment_arn" {
  value = module.iam.vpc_controller_policy_attachment_arn
}

output "worker_node_policy_attachment_arn" {
  value = module.iam.worker_node_policy_attachment_arn
}

output "cni_policy_attachment_arn" {
  value = module.iam.cni_policy_attachment_arn
}

output "cloudwatch_policy_attachment_arn" {
  value = module.iam.cloudwatch_policy_attachment_arn
}

output "eks_ecr_read_only_policy_attachment_arn" {
  value = module.iam.eks_ecr_read_only_policy_attachment_arn
}
