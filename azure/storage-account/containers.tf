resource "azurerm_storage_container" "container" {
  for_each             = var.str-conf.containers
  name                 = each.value.name
  storage_account_name = azurerm_storage_account.str.name
}