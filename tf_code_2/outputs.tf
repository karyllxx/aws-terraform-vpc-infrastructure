output "policy_arn" {
  value       = aws_iam_policy.custom_policy.arn
  description = "The ARN of the moved IAM policy"
}