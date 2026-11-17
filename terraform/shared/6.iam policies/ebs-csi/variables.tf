variable "role_name" {
  description = "Name of the EBS CSI IAM role."
  type        = string
}

variable "policy_arn" {
  description = "AWS managed policy attached to the EBS CSI IAM role."
  type        = string
  default     = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}
