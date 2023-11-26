data "google_compute_network" "network" {
  name = "${var.project}-vpc"
}

resource "google_compute_subnetwork" "private_subnet" {
  name          =  "${var.project}-private-${count.index}"
  ip_cidr_range = var.private_cidrs
  network      = data.google_compute_network.network.name
  region        = var.region
   # count and for_each ARGS cannot be used together, as they can be used to set resource number.connection {
   # Using both leads to error: The "count" and "for_each" meta-arguments are mutually-exclusive, only one should be used to be explicit about the number of
   # resources to be created.
   # count = var.priv_subnet_count
  depends_on = [ data.google_compute_network.network ]
}
