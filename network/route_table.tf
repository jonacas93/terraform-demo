resource "aws_route_table" "this" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name  = "Demo-public-rt"
  }
}

resource "aws_route_table_association" "this" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.this.id
}