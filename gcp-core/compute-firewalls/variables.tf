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

# variable "public_cidrs" {
#     default = {public_subnet1 = "10.0.101.0/24", public_subnet2 = "10.0.102.0/24", public_subnet3 = "10.0.103.0/24"}
# }
# variable "private_cidrs" {
#     default = {private_subnet1 = "10.0.1.0/24", private_subnet2 = "10.0.2.0/24", private_subnet3 = "10.0.3.0/24"}
# }


variable "public_cidrs" {}
variable "private_cidrs" {}