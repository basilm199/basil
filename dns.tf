resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "${var.hostname}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.RacingClub-Application.public_ip]
}
