resource "google_compute_firewall" "allow-internal" {
  name    = "${var.project}-fw-allow-internal"
  network = "${var.project}-vpc"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    var.public_cidrs,
    var.private_cidrs
  ]
}

resource "google_compute_firewall" "allow-http" {
  name    = "${var.project}-fw-allow-http"
  network = "${var.project}-vpc"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"]
  source_tags = ["http"]
}

resource "google_compute_firewall" "allow-bastion" {
  name    = "${var.project}-fw-allow-bastion"
  network = "${var.project}-vpc"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  source_tags = ["ssh"]
}