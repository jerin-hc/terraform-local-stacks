terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
  required_version = ">= 1.2.0"
  
  cloud { 
    hostname = "tfcdev-95263f23.ngrok.app" 
    organization = "hashicorp" 

    workspaces { 
      name = "new-ws" 
    } 
  } 
}

provider "local" {
  # No configuration needed for local provider
}

module "dummy_file" {
  source = "./modules/local_files"
  
  file_content = var.file_content
  file_path    = "${path.module}/${var.file_name}"
}

# Create another dummy file with different content
module "another_dummy_file" {
  source = "./modules/local_files"
  
  file_content = "This is another dummy file with new different content"
  file_path    = "${path.module}/another-${var.file_name}"
}