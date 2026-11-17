output "aws_account_id" {
  description = "AWS account that owns the platform resources."
  value       = data.aws_caller_identity.current.account_id
}

output "cluster_name" {
  description = "EKS cluster receiving the EBS CSI add-on."
  value       = data.terraform_remote_state.eks.outputs.cluster_name
}

output "ecr_repository_name" {
  description = "Name of the ECR repository."
  value       = module.ecr.repository_name
}

output "ecr_repository_url" {
  description = "URL of the ECR repository."
  value       = module.ecr.repository_url
}
