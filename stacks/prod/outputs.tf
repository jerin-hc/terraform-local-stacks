output "prod_config_path" {
  description = "Path to the production configuration file"
  value       = module.prod_config.file_path
}

output "prod_data_path" {
  description = "Path to the production data file"
  value       = module.prod_data.file_path
}