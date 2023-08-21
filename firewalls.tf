resource "digitalocean_firewall" "backend_firewall" {
  name = "nexitautos-firewall"
  #   name            = "RestrictedAccess"
  tags = ["nexitautos", "production"]

  droplet_ids = [
    108499868,
    205776879,
  ]

  inbound_rule {
    port_range = "22"
    protocol   = "tcp"
    source_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
  }
  inbound_rule {
    port_range = "443"
    protocol   = "tcp"
    source_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
  }
  inbound_rule {
    port_range = "80"
    protocol   = "tcp"
    source_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
  }
  inbound_rule {
    port_range = "8080"
    protocol   = "tcp"
    source_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    protocol                       = "icmp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    port_range                     = "80"
    protocol                       = "tcp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    port_range                     = "all"
    protocol                       = "udp"
  }
}
