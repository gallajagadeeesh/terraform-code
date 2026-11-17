data "aws_caller_identity" "current" {}

data "terraform_remote_state" "eks" {
  backend = "local"

  config = {
    path = "${path.root}/../eks/terraform.tfstate"
  }
}

module "ebs_csi_iam" {
  source = "../modules/4.iam/ebs-csi"

  cluster_name      = data.terraform_remote_state.eks.outputs.cluster_name
  role_name         = var.ebs_csi_role_name
  oidc_provider     = data.terraform_remote_state.eks.outputs.oidc_provider
  oidc_provider_arn = data.terraform_remote_state.eks.outputs.oidc_provider_arn
}

module "ebs_csi_policy" {
  source = "../modules/6.iam policies/ebs-csi"

  role_name  = module.ebs_csi_iam.role_name
  policy_arn = var.ebs_csi_policy_arn
}

module "ebs_csi_addon" {
  source = "../modules/3.eks/ebs-csi-addon"

  cluster_name             = data.terraform_remote_state.eks.outputs.cluster_name
  service_account_role_arn = module.ebs_csi_iam.role_arn

  depends_on = [module.ebs_csi_policy]
}

module "ecr" {
  source = "../modules/7.ecr"

  cluster_name    = data.terraform_remote_state.eks.outputs.cluster_name
  repository_name = var.ecr_repository_name
}
