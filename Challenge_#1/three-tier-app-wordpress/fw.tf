#resource "google_compute_firewall" "allow-traffic" {
#  name    = var.fw_name
#  network = google_compute_network.vpc-network-wp.name

#  allow {
#    protocol = "icmp"
#  }

#  allow {
#    protocol = "tcp"
#    ports    = ["80", "443", "22", "3306"]
#  }
#  source_tags   = ["wordpress-firewall"]
#  source_ranges = ["0.0.0.0/0"]
#}
