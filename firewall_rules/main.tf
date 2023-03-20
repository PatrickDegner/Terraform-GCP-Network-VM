resource "google_compute_firewall" "all" {
  name      = "${var.network}-deny-all-egress"
  network   = var.network
  priority  = 999
  direction = "EGRESS"

  deny {
    protocol = "all"
    ports    = []
  }

  target_tags   = ["${var.network}-deny-all-egress"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "icmp" {
  name      = "${var.network}-allow-icmp-ingress"
  network   = var.network
  priority  = 999
  direction = "INGRESS"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["${var.network}-allow-icmp-ingress"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "ssh" {
  name      = "${var.network}-allow-ssh-ingress"
  network   = var.network
  priority  = 999
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-allow-ssh-ingress"]
  source_ranges = ["0.0.0.0/0"]
}