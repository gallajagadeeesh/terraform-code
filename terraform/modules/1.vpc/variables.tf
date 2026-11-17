variable "aws_region" {
  description = "AWS region for the VPC."
  type        = string
}

variable "cluster_name" {
  description = "Name used for the VPC and EKS-related tags."
  type        = string
  default     = "chat-eks"
}

variable "vpc_cidr" {
  description = "IPv4 CIDR for the EKS VPC."
  type        = string
  default     = "10.40.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDRs for the two public ALB subnets."
  type        = list(string)
  default     = ["10.40.0.0/20", "10.40.16.0/20"]

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Provide exactly two public subnet CIDRs."
  }
}

variable "private_subnet_cidrs" {
  description = "CIDRs for the two private EKS node subnets."
  type        = list(string)
  default     = ["10.40.32.0/20", "10.40.48.0/20"]

  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Provide exactly two private subnet CIDRs."
  }
}
