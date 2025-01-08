variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16" # Default VPC range
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"] # Two public subnets
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"] # Two private subnets
}

variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
  default     = "my-cluster" # Replace with your desired cluster name
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Production"  # Tag for the environment
    Project     = "VPC-Setup"   # Tag for the project name
    Owner       = "Admin"       # Tag for ownership
  }
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
