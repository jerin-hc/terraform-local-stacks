resource "local_file" "file" {
  content  = var.file_content
  filename = var.file_path
}