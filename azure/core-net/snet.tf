resource "azurerm_subnet" "snet" {
  for_each             = var.net-conf.subnet-conf
  name                 = each.value.name
  resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
  address_prefixes     = each.value.address_prefixes
  virtual_network_name = azurerm_virtual_network.vnet.name
}