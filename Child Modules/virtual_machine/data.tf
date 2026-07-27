data "azurerm_subnet" "data_subnet" {
  name                 = "snet1"
  virtual_network_name = "vnet2"
  resource_group_name  = "rg2"
}

data "azurerm_key_vault" "kv_data" {
  name                = "kvdocker"
  resource_group_name = "rg2"
}

data "azurerm_key_vault_secret" "secret_username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.kv_data.id
}

data "azurerm_key_vault_secret" "secret_password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.kv_data.id
}

data "azurerm_public_ip" "data_public_ip" {
  name                = "pip1"
  resource_group_name = "rg2"
}