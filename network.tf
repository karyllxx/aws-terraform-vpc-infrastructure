resource "aws_route_table" "cmtr-f1ae3864-public-rt" {
  vpc_id = aws_vpc.cmtr-f1ae3864-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cmtr-f1ae3864-igw.id
  }

  tags = {
    Name = local.public_rt_name
  }
}

resource "aws_route_table" "cmtr-f1ae3864-private-rt" {
  vpc_id = aws_vpc.cmtr-f1ae3864-vpc.id

  tags = {
    Name = local.private_rt_name
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.cmtr-f1ae3864-public-subnet.id
  route_table_id = aws_route_table.cmtr-f1ae3864-public-rt.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.cmtr-f1ae3864-private-subnet.id
  route_table_id = aws_route_table.cmtr-f1ae3864-private-rt.id
}