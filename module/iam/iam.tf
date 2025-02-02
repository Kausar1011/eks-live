
# IAM Role for EKS Cluster
resource "aws_iam_role" "cluster_role" {
  name = "${var.cluster_name}-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = { Service = "eks.amazonaws.com" }
        Action   = "sts:AssumeRole"
      }
    ]
  })

  tags = merge(var.tags, { Name = "${var.cluster_name}-cluster_role" })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy_attachment" {
  role       = aws_iam_role.cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "eks_vpc_controller_policy_attachment" {
  role       = aws_iam_role.cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
}

resource "aws_iam_role_policy_attachment" "eks_ecr_read_only" {
  role       = aws_iam_role.cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

# IAM Role for Worker Nodes
resource "aws_iam_role" "worker_node" {
  name = "${var.cluster_name}-worker-node"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = { Service = "ec2.amazonaws.com" }
        Action   = "sts:AssumeRole"
      }
    ]
  })

  tags = merge(var.tags, { Name = "${var.cluster_name}-worker-node" })
}

resource "aws_iam_role_policy_attachment" "eks_worker_node_policy_attachment" {
  role       = aws_iam_role.worker_node.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "eks_cni_policy_attachment" {
  role       = aws_iam_role.worker_node.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_role_policy_attachment" "cloudwatch_policy_attachment" {
  role       = aws_iam_role.worker_node.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

# Add outputs for role ARN and role names
output "eks_cluster_role_arn" {
  description = "The ARN of the EKS Cluster IAM Role"
  value       = aws_iam_role.cluster_role.arn
}

output "eks_worker_node_role_arn" {
  description = "The ARN of the EKS Worker Node IAM Role"
  value       = aws_iam_role.worker_node.arn
}

output "eks_cluster_role_name" {
  description = "The name of the EKS Cluster IAM Role"
  value       = aws_iam_role.cluster_role.name
}

output "eks_worker_node_role_name" {
  description = "The name of the EKS Worker Node IAM Role"
  value       = aws_iam_role.worker_node.name
}
