resource "google_compute_subnetwork" "public_subnet1" {
  provider = google-beta
  name          =  "${var.project}-${var.region}-public1"
  ip_cidr_range = var.public_subnet1
  network       = google_compute_network.vpc.name
  region        = var.region
  purpose = "PRIVATE_NAT"
  project = var.project
}

resource "google_compute_subnetwork" "private_subnet1" {
  name          =  "${var.project}-${var.region}-private1"
  ip_cidr_range = var.private_subnet1
  network      = google_compute_network.vpc.name
  region        = var.region
}

resource "google_compute_subnetwork" "public_subnet2" {
  name          =  "${var.project}-${var.region}-public2"
  ip_cidr_range = var.public_subnet2
  network       = google_compute_network.vpc.name
  region        = var.region
}

resource "google_compute_subnetwork" "private_subnet2" {
  name          =  "${var.project}-${var.region}-private2"
  ip_cidr_range = var.private_subnet2
  network      = google_compute_network.vpc.name
  region        = var.region
}





