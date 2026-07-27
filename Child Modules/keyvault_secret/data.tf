data "azurerm_key_vault" "kv_data" {
  name                = "kvdocker"
  resource_group_name = "rg2"
}