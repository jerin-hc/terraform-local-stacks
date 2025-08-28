variable "file_content" {
  description = "Content to be written to the dummy file"
  type        = string
  default     = "This is a dummy file created by Terraform local-file provider"
}

variable "file_name" {
  description = "Name of the dummy file to be created"
  type        = string
  default     = "dummy-file.txt"
}