resource "digitalocean_spaces_bucket" "data" {
  name   = "ashesdb-data"
  region = "ams3"
  acl    = "public-read"
}

resource "digitalocean_certificate" "data" {
  name    = "data-cert"
  type    = "lets_encrypt"
  domains = ["d.ashesdb.com"]
}

resource "digitalocean_cdn" "data" {
  origin           = digitalocean_spaces_bucket.data.bucket_domain_name
  custom_domain    = "d.ashesdb.com"
  certificate_name = digitalocean_certificate.data.name
  ttl              = 600
}
