# security group for alb, to allow acess from any where for HTTP and HTTPS traffic
resource "aws_security_group" "wordpress-sg" {
  name        = "p15-wordpress-sg"
  vpc_id      = module.networking.vpc_id
  description = "wordpress SG"
  tags = merge(local.tags,
  { Name = "p15-wordpress-sg" })
}
