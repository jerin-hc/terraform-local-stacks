output "dev_config_path" {
  description = "Path to the development configuration file"
  value       = module.dev_config.file_path
}

output "dev_data_path" {
  description = "Path to the development data file"
  value       = module.dev_data.file_path
}