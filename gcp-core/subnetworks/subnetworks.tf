data "google_compute_network" "network" {
  name = "${var.project}-vpc"
}

resource "google_compute_subnetwork" "public_subnet" {
    #provider = google-beta
  name          =  "${var.project}-public-${count.index}"
  ip_cidr_range = var.public_cidrs
  network       = data.google_compute_network.network.name
  region        = var.region
  project = var.project
  count = var.pub_subnet_count
  depends_on = [ data.google_compute_network.network ]
}


resource "google_compute_subnetwork" "private_subnet" {
  name          =  "${var.project}-private-${count.index}"
  ip_cidr_range = var.private_cidrs
  network      = data.google_compute_network.network.name
  region        = var.region
  count = var.priv_subnet_count
  depends_on = [ data.google_compute_network.network ]
}
