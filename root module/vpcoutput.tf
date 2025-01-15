output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.vpc.subnet_ids
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_azs" {
  description = "The availability zones for the VPC"
  value       = module.vpc.vpc_azs
}

output "eks_cluster_sg_id" {
  description = "The security group ID for the EKS cluster"
  value       = module.vpc.eks_sg_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.vpc.subnet_ids
}

# outputs.tf in the root module

# Output the Public Subnet IDs
output "subnet_ids" {
  value = module.vpc.public_subnet_ids
}
# outputs.tf in the root module

# Output the Private Subnet IDs
output "subnet_ids" {
  value = module.vpc.private_subnet_ids
}
