variable "cluster_name" {
  description = "Name of the EKS cluster receiving the add-on."
  type        = string
}

variable "service_account_role_arn" {
  description = "IAM role ARN used by the EBS CSI controller service account."
  type        = string
}
