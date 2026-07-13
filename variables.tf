variable "synapse_workspace_extended_auditing_policies" {
  description = <<EOT
Map of synapse_workspace_extended_auditing_policies, attributes below
Required:
    - synapse_workspace_id
Optional:
    - log_monitoring_enabled
    - retention_in_days
    - storage_account_access_key
    - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_is_secondary
    - storage_endpoint
EOT

  type = map(object({
    synapse_workspace_id                             = string
    log_monitoring_enabled                           = optional(bool)
    retention_in_days                                = optional(number)
    storage_account_access_key                       = optional(string)
    storage_account_access_key_key_vault_id          = optional(string)
    storage_account_access_key_key_vault_secret_name = optional(string)
    storage_account_access_key_is_secondary          = optional(bool)
    storage_endpoint                                 = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_workspace_extended_auditing_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: storage_endpoint
  #   source:    validation.IsURLWithHTTPS(...) - no translation rule yet, add one
  # path: storage_account_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: retention_in_days
  #   condition: value >= 0 && value <= 3285
  #   message:   must be between 0 and 3285
}

