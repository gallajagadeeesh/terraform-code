variable "cluster_name" {
  description = "Application name used in resource tags."
  type        = string
}

variable "repository_name" {
  description = "Name of the ECR repository."
  type        = string
  default     = "cluster-status-chat"
}
