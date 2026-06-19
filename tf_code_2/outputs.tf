output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The ID of the deployed VPC infrastructure"
}