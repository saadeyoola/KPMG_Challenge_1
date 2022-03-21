# create route table for the public subnets
resource "aws_route_table" "public-rtb" {
  vpc_id = module.networking.vpc_id

  tags = merge(local.tags,
  { Name = "p15-Public-Route-Table" })
}



# create route for the public route table and attach the internet gateway
resource "aws_route" "public-rtb-route" {
  route_table_id         = aws_route_table.public-rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ig.id
}

# associate all public subnets to the public route table
resource "aws_route_table_association" "public-subnets-assoc-1" {
  subnet_id      = module.networking.public_subnet_1_id
  route_table_id = aws_route_table.public-rtb.id
}

resource "aws_route_table_association" "public-subnets-assoc-2" {
  subnet_id      = module.networking.public_subnet_2_id
  route_table_id = aws_route_table.public-rtb.id
}

