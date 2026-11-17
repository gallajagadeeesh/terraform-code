variable "cluster_role_name" {
  description = "Name of the EKS control-plane IAM role."
  type        = string
}

variable "node_role_name" {
  description = "Name of the EKS worker-node IAM role."
  type        = string
}

variable "cluster_policy_arn" {
  description = "AWS managed policy attached to the EKS control-plane role."
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

variable "node_policy_arns" {
  description = "AWS managed policies attached to the EKS worker-node role."
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
  ]
}
