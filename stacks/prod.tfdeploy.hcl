deployment "prod" {
  description = "Production environment"

  inputs = {
    config.file_content = "This is a production environment configuration"
    config.file_path    = "${path.module}/prod-config.txt"

    data.file_content = "This contains production data"
    data.file_path    = "${path.module}/prod-data.txt"
  }
}
