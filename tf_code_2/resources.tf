resource "aws_iam_policy" "custom_policy" {
  name        = "resource-move-demo-policy"
  path        = "/"
  description = "Custom role with limited permissions"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}