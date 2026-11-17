locals {
  common_tags = {
    Application = var.cluster_name
    ManagedBy   = "Terraform"
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.37.1"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  create_iam_role = false
  iam_role_arn    = var.cluster_iam_role_arn

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa                              = true
  enable_cluster_creator_admin_permissions = true

  cluster_endpoint_private_access      = true
  cluster_endpoint_public_access       = true
  cluster_endpoint_public_access_cidrs = var.cluster_admin_cidrs

  cluster_addons = {
    coredns    = { most_recent = true }
    kube-proxy = { most_recent = true }
    vpc-cni    = { most_recent = true }
  }

  eks_managed_node_groups = {}

  tags = local.common_tags
}
