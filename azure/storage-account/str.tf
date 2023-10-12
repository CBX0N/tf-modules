resource "azurerm_storage_account" "str" {
  name                     = local.str-name
  account_replication_type = var.str-conf.account_replication_type
  account_tier             = var.str-conf.account_tier
  location                 = var.location
  resource_group_name      = var.rg-name
}