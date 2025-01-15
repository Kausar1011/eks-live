output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.aws_vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = module.vpc.nat_gateway_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_azs" {
  description = "The availability zones for the VPC"
  value       = module.vpc.vpc_azs
}
