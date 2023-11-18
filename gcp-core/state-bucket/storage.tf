resource "google_storage_bucket" "tf_state" {
  name          = "metro-infra-states"
  location      = var.region
  force_destroy = true

  public_access_prevention = "enforced"
  project = var.project
  storage_class = var.storage_class
    # optional autoclass block for managed class categorization and management
    # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket#nested_lifecycle_rule
    ## autoclass {
    ##   
    ## }
    # other sub-block configs:
    ## https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
    ## versioning / lifecycle_rule /retention_policy / logging, etc
}