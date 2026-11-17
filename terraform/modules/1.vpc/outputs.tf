output "aws_account_id" {
  description = "AWS account that owns the VPC."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "AWS region used for the VPC."
  value       = var.aws_region
}

output "vpc_id" {
  description = "ID of the VPC created for EKS."
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "IDs of the private subnets used by EKS."
  value       = module.vpc.private_subnets
}

output "availability_zones" {
  description = "Availability zones used by the VPC."
  value       = local.availability_zones
}
