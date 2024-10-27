####################################################

### Optional 
### For CloudFlare only 

####################################################

# data "cloudflare_zone" "this" {
#   name = var.domain
# }

# Create an A record in the hosted zone
resource "aws_route53_record" "2waveyyy" {
  zone_id    = "Z00539352S8OFLGNL4UXW"
  name       = var.fqdn
  type       = "A"
  ttl        = "300"
  records    = [aws_instance.demo.public_ip]
  depends_on = [aws_instance.demo]
}