variable "aws_region" {
  description = "AWS region for the platform resources."
  type        = string
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository."
  type        = string
  default     = "cluster-status-chat"
}

variable "ebs_csi_role_name" {
  description = "IAM role name used by the EBS CSI service account."
  type        = string
  default     = "chat-eks-ebs-csi"
}

variable "ebs_csi_policy_arn" {
  description = "AWS managed policy attached to the EBS CSI IAM role."
  type        = string
  default     = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}
