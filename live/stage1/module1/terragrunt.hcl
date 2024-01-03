terraform {
  source = "../../../modules/${local.module}///"
}

locals {
  module = "module1"

  # After stripping, this is no longer in use, but is retained as it may be involved in reproducing issue-2794.
  common_vars = read_terragrunt_config(find_in_parent_folders("common_vars.hcl"), { locals = {} })
}

include "root" {
  path = find_in_parent_folders()
}