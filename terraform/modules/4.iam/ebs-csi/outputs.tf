output "role_name" {
  description = "Name of the EBS CSI IAM role."
  value       = aws_iam_role.this.name
}

output "role_arn" {
  description = "ARN of the EBS CSI IAM role."
  value       = aws_iam_role.this.arn
}
