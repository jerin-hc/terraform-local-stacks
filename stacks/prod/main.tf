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

# Production environment files
module "prod_config" {
  source = "../../modules/local_files"
  
  file_content = "This is a production environment configuration"
  file_path    = "${path.module}/prod-config.txt"
}

module "prod_data" {
  source = "../../modules/local_files"
  
  file_content = "This contains production data"
  file_path    = "${path.module}/prod-data.txt"
}

output "prod_message" {
  value = "Hello from PROD stack 🚀"
}

output "prod_config_path" {
  value = module.prod_config.file_path
}

output "prod_data_path" {
  value = module.prod_data.file_path
}
