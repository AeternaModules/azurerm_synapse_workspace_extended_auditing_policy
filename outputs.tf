output "synapse_workspace_extended_auditing_policies_id" {
  description = "Map of id values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_workspace_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.log_monitoring_enabled if v.log_monitoring_enabled != null }
}
output "synapse_workspace_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.retention_in_days if v.retention_in_days != null }
}
output "synapse_workspace_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.storage_account_access_key if v.storage_account_access_key != null && length(v.storage_account_access_key) > 0 }
  sensitive   = true
}
output "synapse_workspace_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.storage_account_access_key_is_secondary if v.storage_account_access_key_is_secondary != null }
}
output "synapse_workspace_extended_auditing_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.storage_endpoint if v.storage_endpoint != null && length(v.storage_endpoint) > 0 }
}
output "synapse_workspace_extended_auditing_policies_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = { for k, v in azurerm_synapse_workspace_extended_auditing_policy.synapse_workspace_extended_auditing_policies : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}

