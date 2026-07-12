data "azurerm_key_vault_secret" "storage_account_access_key" {
  for_each     = { for k, v in var.synapse_workspace_extended_auditing_policies : k => v if v.storage_account_access_key_key_vault_id != null && v.storage_account_access_key_key_vault_secret_name != null }
  name         = each.value.storage_account_access_key_key_vault_secret_name
  key_vault_id = each.value.storage_account_access_key_key_vault_id
}
resource "azurerm_synapse_workspace_extended_auditing_policy" "synapse_workspace_extended_auditing_policies" {
  for_each = var.synapse_workspace_extended_auditing_policies

  synapse_workspace_id                    = each.value.synapse_workspace_id
  log_monitoring_enabled                  = each.value.log_monitoring_enabled
  retention_in_days                       = each.value.retention_in_days
  storage_account_access_key              = each.value.storage_account_access_key != null ? each.value.storage_account_access_key : try(data.azurerm_key_vault_secret.storage_account_access_key[each.key].value, null)
  storage_account_access_key_is_secondary = each.value.storage_account_access_key_is_secondary
  storage_endpoint                        = each.value.storage_endpoint
}

