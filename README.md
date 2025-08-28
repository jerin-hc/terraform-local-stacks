# Terraform Local Stacks

A minimal Terraform stacks setup that demonstrates how to organize Terraform code into reusable modules using only the local_file provider, with Terraform Cloud integration.

## Structure

```
terraform-local-stacks/
├── main.tf                      # Root module configuration with Terraform Cloud settings
├── variables.tf                 # Input variables for the root module
├── outputs.tf                   # Output values from the root module
├── modules/                     # Directory containing reusable modules
│   └── local_files/             # Module for creating local files
│       ├── main.tf              # Module configuration
│       ├── variables.tf         # Input variables for the module
│       └── outputs.tf           # Output values from the module
├── dummy-file.txt               # Generated file from the module
└── another-dummy-file.txt       # Another generated file from the module
```

## Features

- Uses the local-file provider to create files on the filesystem
- Organized with a reusable module structure
- Configured for Terraform Cloud integration
- Creates multiple files with different content

## Terraform Cloud Integration

This project is configured to work with Terraform Cloud:

```hcl
cloud { 
  hostname     = "tfcdev-95263f23.ngrok.app" 
  organization = "local-setup" 
  workspaces { 
    name = "agnet-test-ws" 
  } 
}
```

When using Terraform Cloud with an agent:
- The files will be created on the machine where the Terraform Cloud agent is running
- The state is stored in Terraform Cloud
- All Terraform operations are executed on the agent's machine

## Usage

1. Initialize the Terraform working directory:

```bash
terraform init
```

2. Preview the changes that will be made:

```bash
terraform plan
```

3. Apply the changes:

```bash
terraform apply
```

4. Clean up resources when done:

```bash
terraform destroy
```

## Module Usage

The local_files module can be reused to create different files:

```hcl
module "my_file" {
  source = "./modules/local_files"
  
  file_content = "My custom content"
  file_path    = "./path/to/my-file.txt"
}
```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| file_content | Content to be written to the dummy file | "This is a dummy file created by Terraform local-file provider" |
| file_name | Name of the dummy file to be created | "dummy-file.txt" |

## Outputs

| Name | Description |
|------|-------------|
| dummy_file_path | Path to the created dummy file |
| dummy_file_content | Content of the created dummy file |
| another_dummy_file_path | Path to the second created dummy file |
| another_dummy_file_content | Content of the second created dummy file |

## Notes

This is a minimal example using only the local_file provider to simulate infrastructure creation without any cloud provider dependencies. When used with Terraform Cloud, the files are created on the agent's machine, not on your local machine.