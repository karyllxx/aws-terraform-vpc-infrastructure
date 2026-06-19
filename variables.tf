variable "aws_region" {
  type        = string
  description = "The AWS region where resources are located"
}

variable "project_id" {
  type        = string
  description = "The project identifier used for tagging"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "The CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "The CIDR block for the private subnet"
}