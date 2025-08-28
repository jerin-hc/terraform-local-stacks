output "file_path" {
  description = "Path to the created file"
  value       = local_file.file.filename
}

output "file_content" {
  description = "Content of the created file"
  value       = local_file.file.content
}

output "file_id" {
  description = "ID of the created file resource"
  value       = local_file.file.id
}