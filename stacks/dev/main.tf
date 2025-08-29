terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "local" {
  # No configuration needed for local provider
}

# Development environment files
module "dev_config" {
  source = "../../modules/local_files"
  
  file_content = "This is a development environment configuration"
  file_path    = "${path.module}/dev-config.txt"
}

module "dev_data" {
  source = "../../modules/local_files"
  
  file_content = "This contains development data"
  file_path    = "${path.module}/dev-data.txt"
}