output "directory_lookup_id" {
  description = "Map of id values across all directory_lookup, keyed the same as var.directory_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_directory.directory_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_lookup_object_id" {
  description = "Map of object_id values across all directory_lookup, keyed the same as var.directory_lookup except keys with no object_id are omitted"
  value       = { for k, v in data.databricks_directory.directory_lookup : k => v.object_id if v.object_id != null }
}
output "directory_lookup_path" {
  description = "Map of path values across all directory_lookup, keyed the same as var.directory_lookup except keys with no path are omitted"
  value       = { for k, v in data.databricks_directory.directory_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "directory_lookup_provider_config" {
  description = "Map of provider_config values across all directory_lookup, keyed the same as var.directory_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_directory.directory_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "directory_lookup_workspace_path" {
  description = "Map of workspace_path values across all directory_lookup, keyed the same as var.directory_lookup except keys with no workspace_path are omitted"
  value       = { for k, v in data.databricks_directory.directory_lookup : k => v.workspace_path if v.workspace_path != null && length(v.workspace_path) > 0 }
}

