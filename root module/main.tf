# VPC Module
module "vpc" {
  source             = "../module/vpc"
  cidr_block         = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  cluster_name       = var.cluster_name
  tags               = var.tags
}

# IAM Module
module "iam" {
  source          = "../module/iam"
  cluster_name    = var.cluster_name
  tags            = var.tags
}

# EKS Module
module "eks" {
  source           = "../module/eks"
  cluster_name     = var.cluster_name
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
  subnet_ids       = module.vpc.private_subnet_ids
  cluster_sg_id    = module.vpc.eks_cluster_sg_id
  tags             = var.tags
}


