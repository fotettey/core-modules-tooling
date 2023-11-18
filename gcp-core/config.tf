terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.00.0"
    }
  }

  backend "gcs" {
    bucket  = "metro-infra-states"
    prefix  = "terraform/state"
    credentials = "/home/vagrant/projects/.secrets/metro-infra-dev-4e86d7cc9bda.json"
  }

}

provider "google" {
  credentials = file(var.sa_path)

  project = var.project
  region  = var.region
   #zone    = var.zone
  default_labels = var.default_tags

}

