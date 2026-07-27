resource "azurerm_key_vault_secret" "pc_secret" {
    for_each = var.secrets
  name         = each.value.name
  value        = each.value.value
  key_vault_id = data.azurerm_key_vault.kv_data.id
}