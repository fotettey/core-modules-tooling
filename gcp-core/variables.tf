variable "stage" {}

variable "project" {
        default = "metro-infra-dev"
        type = string
    }

variable "region" { 
        default = "us-west1"
    }

variable "zone" { 
        default = "us-west1-a"
    }

variable "compute_network" { 
        default = "default"
    }

variable "default_tags" {
  default     = {
    project = "platform-infra-gcp"
    billing = "cloud-swf"
    owner = "festus_ofori-tettey"
    firm = "metronum-co"
  }
}

# Label format from docs: https://registry.terraform.io/providers/hashicorp/google/5.0.0/docs/guides/provider_reference
#  default_labels = {
#    my_global_key = "one"
#    my_default_key = "two"
#  }

variable "additional_tags" {
  default     = [
    "PLATFORM-INFRA-GCP",
    "CLOUD-SWF",
    "festus.ofori-tettey",
    "metronum.co"
  ]
  description = "Resource tags"
}

  # variable "tags" {
  #   default     = (
  #     "PLATFORM-INFRA-AWS"
  #     "CLOUD-SWF"
  #     "festus.ofori-tettey"
  #     "metronum.co")
  #   
  #   description = "Resource tags"
  #   type        = set(string)
  # }

variable "linux_image" {
  type = string
  default = "ubuntu-minimal-2004-lts"
}

variable "linux_project" {
  type = string
  default = "ubuntu-os-cloud"
}

variable "windows_image" {
  type = string
  default = "windows-2019"
}

variable "windows_project" {
  type = string
  default = "windows-cloud"
}

# variable "security_group_id" {
#   default = "" 
# }

variable "vm_instance_type" {
  type = string
  default = "t2.micro"
}

variable "dhvm_count" {
  default = 0
}

variable "cloudsql_pg_name" {
  type = string
  default = "shared-postgres-db"
}

variable "cloudsql_pg_dbversion" {
  type = string
  default = "POSTGRES_13"
}

variable "cloudsql_pg_tier" {
  type = string
  default = "db-f1-micro"
}

variable "cloudsql_pg_edition" {
  type = string
  default = "ENTERPRISE"
}

variable "cloudsql_pg_size" {
  default = 10
}

variable "app_name" {
  default = "jenkins"
}

variable "sa_path" {
  default = "/home/vagrant/.secrets/metro-infra-dev-4e86d7cc9bda.json"
}

variable "storage_class" {
  default = "STANDARD"
}

variable "backup_storage_class" {
  default = "NEARLINE"
}
## Child Module Outputs need to be declared with the VALUE
## reference to the NAME of declared OUTPUT in the PARENT MODULE
## in the following format: module.<module_name>.<output_value_name>
## where <output_value_name> --> d parent Module's Output Name.
#    output "sqlinstance_name" {
#      value = google_sql_database_instance.main.id
#    }
## Eg: d above Output declared in Parent Module can be referenced in the child
## module using the below value reference to its declared Name "sqlinstance_name"
# output "sqlinstance_pg_name" {
#   value = module.shared_db_instance.sqlinstance_pg_name
# }
# 
# output "sqlinstance_pg_ip" {
#   value = module.shared_db_instance.sqlinstance_pg_ip
# }
# 
# output "sqlinstance_pg_connection" {
#   value = module.shared_db_instance.sqlinstance_pg_connection
# }
# 
# output "cloudsql_jenkins_pass" {
#   value = module.dtrack-db.cloudsql_jenkins_pass
#   sensitive = true
# }