resource "aws_iam_role_policy_attachment" "cluster" {
  role       = var.cluster_role_name
  policy_arn = var.cluster_policy_arn
}

resource "aws_iam_role_policy_attachment" "node" {
  for_each = toset(var.node_policy_arns)

  role       = var.node_role_name
  policy_arn = each.value
}
