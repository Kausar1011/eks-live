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

# Output the Public Subnet IDs from the VPC module
output "subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

# Output the Private Subnet IDs from the VPC module (if needed)
output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}
