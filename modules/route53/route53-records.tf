data "aws_route53_zone" "oldcowboyshop" {
  name         = "devops-masterclass.link"
  private_zone = false
}


# create records for tooling
resource "aws_route53_record" "tooling" {
  zone_id = data.aws_route53_zone.oldcowboyshop.zone_id
  name    = "${var.environment}.tooling.devops-masterclass.link"
  type    = "A"

  alias {
    name                   = var.external_alb_dns_name
    zone_id                = var.external_alb_zone_id
    evaluate_target_health = true
  }
}


# create records for wordpress
resource "aws_route53_record" "wordpress" {
  zone_id = data.aws_route53_zone.oldcowboyshop.zone_id
  name    = "${var.environment}.wordpress.devops-masterclass.link"
  type    = "A"

  alias {
    name                   = var.external_alb_dns_name
    zone_id                = var.external_alb_zone_id
    evaluate_target_health = true
  }
}
