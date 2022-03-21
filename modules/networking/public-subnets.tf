# Create public subnets
resource "aws_subnet" "PublicSubnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = merge(var.tags,
  { Name = "PublicSubnet-1" })

}


resource "aws_subnet" "PublicSubnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "100.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = merge(var.tags,
  { Name = "PublicSubnet-2" })
}
