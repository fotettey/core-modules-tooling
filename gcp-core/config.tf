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
    credentials = "/home/vagrant/projects/software.factory/platform.infra.gcp.secrets/metro-infra-dev-e51b7089f290.json"
  }

}

provider "google" {
  credentials = file(var.sa_path)

  project = var.project
  region  = var.region
   #zone    = var.zone
  default_labels = var.default_tags

}

