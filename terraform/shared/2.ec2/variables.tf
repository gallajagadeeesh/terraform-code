variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version of the EKS cluster."
  type        = string
}

variable "node_group_name" {
  description = "Name suffix for the managed node group."
  type        = string
  default     = "general"
}

variable "node_role_arn" {
  description = "IAM role ARN used by worker nodes."
  type        = string
}

variable "subnet_ids" {
  description = "Private subnet IDs for the managed node group."
  type        = list(string)
}

variable "instance_types" {
  description = "EC2 instance types for worker nodes."
  type        = list(string)
  default     = ["m6i.large"]
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 2
}

variable "desired_size" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "ami_type" {
  description = "AMI type for worker nodes."
  type        = string
  default     = "AL2023_x86_64_STANDARD"
}

variable "capacity_type" {
  description = "Capacity type for worker nodes."
  type        = string
  default     = "ON_DEMAND"
}
