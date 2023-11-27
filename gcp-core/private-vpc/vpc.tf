resource "google_compute_network" "vpc" {
    name          =  "${var.project}-vpc"
    # name          =  "${format("%s","${var.company}-${var.env}-vpc")}"
  auto_create_subnetworks = "false"
  routing_mode            = "REGIONAL"
}