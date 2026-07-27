resource "azurerm_subnet" "s_net" {
  for_each = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.data_vnet.name
  address_prefixes     = each.value.address_prefixes
}