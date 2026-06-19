locals {
  vpc_name            = "${var.project_id}-vpc"
  igw_name            = "${var.project_id}-igw"
  public_subnet_name  = "${var.project_id}-public-subnet"
  private_subnet_name = "${var.project_id}-private-subnet"
  public_rt_name      = "${var.project_id}-public-rt"
  private_rt_name     = "${var.project_id}-private-rt"
}

resource "aws_vpc" "cmtr-f1ae3864-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = local.vpc_name
  }
}

resource "aws_internet_gateway" "cmtr-f1ae3864-igw" {
  vpc_id = aws_vpc.cmtr-f1ae3864-vpc.id

  tags = {
    Name = local.igw_name
  }
}

resource "aws_subnet" "cmtr-f1ae3864-public-subnet" {
  vpc_id     = aws_vpc.cmtr-f1ae3864-vpc.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = local.public_subnet_name
  }
}

resource "aws_subnet" "cmtr-f1ae3864-private-subnet" {
  vpc_id     = aws_vpc.cmtr-f1ae3864-vpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = local.private_subnet_name
  }
}