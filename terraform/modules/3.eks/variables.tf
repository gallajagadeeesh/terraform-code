variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "chat-eks"
}

variable "cluster_version" {
  description = "Kubernetes version supported by EKS in the selected region."
  type        = string
  default     = "1.37"
}

variable "cluster_admin_cidrs" {
  description = "Public IPv4 CIDR ranges allowed to reach the EKS API endpoint. Use the administrator IP with /32."
  type        = list(string)

  validation {
    condition     = length(var.cluster_admin_cidrs) > 0 && alltrue([for cidr in var.cluster_admin_cidrs : can(cidrhost(cidr, 0))])
    error_message = "Set at least one valid CIDR, preferably the administrator's current public IP with a /32 mask."
  }
}

variable "vpc_id" {
  description = "ID of the VPC used by the EKS cluster."
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs used by the EKS cluster."
  type        = list(string)
}

variable "cluster_iam_role_arn" {
  description = "IAM role ARN used by the EKS control plane."
  type        = string
}
