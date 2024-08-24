# resource "aws_key_pair" "webkey" {
#   key_name   = "web-key"
#   public_key = tls_private_key.oskey.public_key_openssh
# }

# resource "tls_private_key" "oskey" {
#   algorithm = "RSA"
# }

# resource "local_file" "key" {
#   content  = tls_private_key.oskey.private_key_pem
#   filename = "web-key.pem"
# }

### Use when executing on GitLab / GitHub 
# resource "aws_key_pair" "ssh_key" {
#   key_name   = "demo"
#   public_key = var.ssh_key_pair
# }

### Use for Jenkins pipleline
resource "aws_key_pair" "ssh_key" {
  key_name   = var.ssh_key
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIeh8Bos/R9uLRGiQAUi+ZU62Cx9W2TBpikWOaeIg4ytL41mPIGU0BvWhgJ3JCEEYDrl/zot54ao8u2jCnFnkoq82wMWZ0zfMkJvTK8h45feAaxdfBqKtMWG4R005RuwY8VO8QKXHkWGMcvpaRJWEjmx2ft4i/aARGPMHizXPaHWFng+tHghqFVI3K9Er0TUPX8epROjleRMsV7KmRqgxa2BWUT5B7QdDSsaKIqZl+Ror6o2NkwrxI9jv1srYYINYRKqczUp5LZ9Ie3uX3sfNbwYcs9TZBQ1mzynjd2BbnMZhQwIumvGJTwViAYAyab0XfPZ78C5t/fTVS3A0ZlwjY6s3m/MQRYVocaGdU5osXXG/AqNO9EFwHQ4ujsa7Y35d6XFS9TXaDwufa37iduwymn/PBQSNk2t0yfoKML+HTXZBA/BGlpBAAYkEakPPYUQTAukxeN0ZV7enfm1TKC8ERKgXB5r0TDDmELHedUnY3Cvl/WL9VMlo8ErRb+gTcnmE= 2wavey@Davids-MacBook-Pro.local"
}

### Use when executing locally 
# resource "aws_key_pair" "ssh_key" {
#   key_name   = "terraform-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }