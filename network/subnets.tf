resource "aws_subnet" "private" { 
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.0.128.0/20"

  tags = {
    Name            = "Demo-private-subnet"
  }
}

resource "aws_subnet" "public" { 
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.0.0.0/20"

  map_public_ip_on_launch = true
  tags = {
    Name            = "Demo-public-subnet"
  }
}