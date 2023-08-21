resource "digitalocean_domain" "www" {
  name = "nexitautos.com"
}

resource "digitalocean_record" "ns1" {
  domain = "nexitautos.com"
  name   = "@"
  ttl    = 1800
  type   = "NS"
  value  = "ns1.digitalocean.com."
}

resource "digitalocean_record" "ns2" {
  domain = "nexitautos.com"
  name   = "@"
  ttl    = 1800
  type   = "NS"
  value  = "ns2.digitalocean.com."
}

resource "digitalocean_record" "ns3" {
  domain = "nexitautos.com"
  name   = "@"
  ttl    = 1800
  type   = "NS"
  value  = "ns3.digitalocean.com."
}

resource "digitalocean_record" "base_nexitautos" {
  domain = "nexitautos.com"
  name   = "@"
  ttl    = 3600
  type   = "A"
  value  = "142.93.171.112"
}

resource "digitalocean_record" "www_nexitautos" {
  domain = "nexitautos.com"
  name   = "www"
  ttl    = 3600
  type   = "A"
  value  = "142.93.171.112"
}

resource "digitalocean_record" "app_nexitautos" {
  domain = "nexitautos.com"
  name   = "app"
  ttl    = 3600
  type   = "A"
  value  = "142.93.171.112"
}

resource "digitalocean_record" "test_nexitautos" {
    domain = "nexitautos.com"
    name = "test"
    ttl = 3600
    type = "A"
    value = "142.93.105.161"
}

resource "digitalocean_record" "docs_subdomain" {
  domain = "nexitautos.com"
  name   = "docs"
  ttl    = 3600
  type   = "A"
  value  = "142.93.105.161"
}

resource "digitalocean_record" "testlink_subdomain" {
  domain = "nexitautos.com"
  name   = "teslink"
  ttl    = 3600
  type   = "A"
  value  = "142.93.105.161"
}

resource "digitalocean_record" "test-api_subdomain" {
  domain = "nexitautos.com"
  name   = "test.api"
  ttl    = 3600
  type   = "A"
  port   = 8080
  value  = "142.93.105.161"
}
