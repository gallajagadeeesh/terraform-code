output "cluster_name" {
  description = "Name of the EKS cluster."
  value       = module.eks.cluster_name
}

output "oidc_provider" {
  description = "OIDC provider host/path used by workload IAM roles."
  value       = module.eks.oidc_provider
}

output "oidc_provider_arn" {
  description = "ARN of the EKS OIDC provider."
  value       = module.eks.oidc_provider_arn
}

output "cluster_oidc_issuer_url" {
  description = "Issuer URL for the EKS cluster OIDC provider."
  value       = module.eks.cluster_oidc_issuer_url
}
