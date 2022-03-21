# security group for alb, to allow acess from any where for HTTP and HTTPS traffic
resource "aws_security_group" "datalayer-sg" {
  name        = "p15-datalayer-sg"
  vpc_id      = module.networking.vpc_id
  description = "Datalayer SG"
  tags = merge(local.tags,
  { Name = "p15-datalayer-sg" })
}
