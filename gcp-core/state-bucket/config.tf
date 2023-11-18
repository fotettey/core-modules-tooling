terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.00.0"
    }
  }

}

provider "google" {
  credentials = file(var.sa_path)

  project = var.project
  region  = var.region
   #zone    = var.zone
  default_labels = var.default_tags

}

