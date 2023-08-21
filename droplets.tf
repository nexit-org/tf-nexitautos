terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

variable "do_token" {}

resource "digitalocean_droplet" "nexitautos_backend" {
  name    = "ubuntu-s-1vcpu-1gb-fra1-01"
  region  = "fra1"
  size    = "s-1vcpu-1gb"
  tags    = ["production", "nexitautos"]
  image   = "37206537"
  backups = true
}