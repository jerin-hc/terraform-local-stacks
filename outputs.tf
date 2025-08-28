output "dummy_file_path" {
  description = "Path to the created dummy file"
  value       = module.dummy_file.file_path
}

output "dummy_file_content" {
  description = "Content of the created dummy file"
  value       = module.dummy_file.file_content
}

output "another_dummy_file_path" {
  description = "Path to the second created dummy file"
  value       = module.another_dummy_file.file_path
}

output "another_dummy_file_content" {
  description = "Content of the second created dummy file"
  value       = module.another_dummy_file.file_content
}