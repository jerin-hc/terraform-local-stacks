deployment "dev" {
  description = "Development environment"

  inputs = {
    config.file_content = "This is a development environment configuration"
    config.file_path    = "${path.module}/dev-config.txt"

    data.file_content = "This contains development data"
    data.file_path    = "${path.module}/dev-data.txt"
  }
}
