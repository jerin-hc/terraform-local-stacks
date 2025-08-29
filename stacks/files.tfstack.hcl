stack {
  name        = "files-stack"
  description = "Manages local files for different environments"
}

component "config" {
  source = "../../modules/local_files"

  # default values (can be overridden in deployments)
  inputs = {
    file_content = "default config"
    file_path    = "${path.module}/default-config.txt"
  }
}

component "data" {
  source = "../../modules/local_files"

  inputs = {
    file_content = "default data"
    file_path    = "${path.module}/default-data.txt"
  }
}
