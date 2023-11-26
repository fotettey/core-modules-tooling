data "google_compute_network" "network" {
  name = "${var.project}-vpc"
}

resource "google_compute_subnetwork" "public_subnet" {
    #provider = google-beta
  name          =  "${var.project}-public-${count.index}"
  ip_cidr_range = var.public_cidrs
  network       = data.google_compute_network.network.name
  region        = var.region
   # count and for_each ARGS cannot be used together, as they can be used to set resource number.connection {
   # Using both leads to error: The "count" and "for_each" meta-arguments are mutually-exclusive, only one should be used to be explicit about the number of
   # resources to be created.
   # count = var.pub_subnet_count
  project = var.project
  depends_on = [ data.google_compute_network.network ]
}

