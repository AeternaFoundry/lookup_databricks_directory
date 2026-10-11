data "databricks_directory" "directory_lookup" {
  for_each = var.directory_lookup

  path           = each.value.path
  object_id      = each.value.object_id
  workspace_path = each.value.workspace_path

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

