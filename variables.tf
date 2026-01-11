variable "synapse_workspace_extended_auditing_policys" {
  description = <<EOT
Map of synapse_workspace_extended_auditing_policys, attributes below
Required:
    - synapse_workspace_id
Optional:
    - log_monitoring_enabled
    - retention_in_days
    - storage_account_access_key
    - storage_account_access_key_is_secondary
    - storage_endpoint
EOT

  type = map(object({
    synapse_workspace_id                    = string
    log_monitoring_enabled                  = optional(bool, true)
    retention_in_days                       = optional(number, 0)
    storage_account_access_key              = optional(string)
    storage_account_access_key_is_secondary = optional(bool, false)
    storage_endpoint                        = optional(string)
  }))
}

