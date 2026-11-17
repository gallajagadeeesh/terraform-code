variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "cluster_role_name" {
  description = "IAM role name used by the EKS control plane."
  type        = string
  default     = "chat-eks-cluster-role"
}

variable "node_role_name" {
  description = "IAM role name used by EKS worker nodes."
  type        = string
  default     = "chat-eks-node-role"
}
