terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "random" {
}

resource "random_uuid" "uuid" {
}

output "uuid" {
  value = "${random_uuid.uuid.result}"
}