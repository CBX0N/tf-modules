resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet-name
  location            = var.location
  resource_group_name = var.rg-name

  address_space = var.net-conf.address_space
  tags = var.tags
}