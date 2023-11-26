variable "project" {
        default = "metro-infra-dev"
    }

variable "region" {
        default = "us-west1"
    }

variable "zone" {
        default = "us-west1-a"
    }

variable "default_tags" {
  default     = {
    project = "platform-infra-gcp"
    billing = "cloud-swf"
    owner = "festus_ofori-tettey"
    firm = "metronum-co"
  }
}

variable "sa_path" {
  default = "/home/vagrant/projects/.secrets/metro-infra-dev-4e86d7cc9bda.json"
}

variable "private_subnet3" {
        default = "10.0.3.0/24"
    }

variable "public_subnet3" {
        default = "10.0.103.0/24"
    }

######

variable "public_cidrs" {}
variable "private_cidrs" {}