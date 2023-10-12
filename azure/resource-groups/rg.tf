resource "azurerm_resource_group" "rg" {
  name     = local.rg-name
  location = var.location
  tags     = var.tags
}