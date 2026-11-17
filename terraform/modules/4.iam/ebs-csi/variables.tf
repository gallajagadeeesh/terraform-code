variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "role_name" {
  description = "IAM role name used by the EBS CSI service account."
  type        = string
  default     = "chat-eks-ebs-csi"
}

variable "oidc_provider" {
  description = "OIDC provider host/path for the EKS cluster."
  type        = string
}

variable "oidc_provider_arn" {
  description = "ARN of the EKS OIDC provider."
  type        = string
}
