module "managed_node_group" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "20.37.1"

  name            = "${var.cluster_name}-${var.node_group_name}"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = var.subnet_ids

  create_iam_role        = false
  create_iam_role_policy = false
  iam_role_arn           = var.node_role_arn

  instance_types = var.instance_types
  min_size       = var.min_size
  desired_size   = var.desired_size
  max_size       = var.max_size
  ami_type       = var.ami_type
  capacity_type  = var.capacity_type

  tags = {
    Application = var.cluster_name
    ManagedBy   = "Terraform"
  }
}
