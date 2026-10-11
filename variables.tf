variable "directory_lookup" {
  description = <<EOT
Map of directory_lookup, attributes below
Required:
    - path
Optional:
    - object_id
    - workspace_path
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path           = string
    object_id      = optional(number)
    workspace_path = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

