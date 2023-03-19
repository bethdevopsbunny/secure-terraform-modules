## Terragrunt remote state example.
## https://terragrunt.gruntwork.io/
## https://www.terraform.io/language/settings/backends/gcs

remote_state {
  backend = "gcs"
  generate = {
    path      = "statefile.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "terraform-state"
    prefix  = "terraform/state/kubernetes-cluster/terraform.tfstate"
  }
}