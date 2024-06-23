# Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  domain = "vpc"
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.nat.id
  subnet_id     = data.aws_subnets.nat_public_subnet.ids[0]

  tags = {
    Name = "Public Nat GW"
  }

}


# Create a route to the NAT Gateway in the private route table if is already created in console(to avoid cost)

resource "aws_route" "private" {
  route_table_id         = data.aws_route_table.private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.this.id
}