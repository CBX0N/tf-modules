resource "azurerm_key_vault" "kv" {
  name                = local.kv-name
  resource_group_name = var.rg-name
  location            = var.location
  sku_name            = var.kv-conf.sku_name
  tenant_id           = var.tenant_id
  tags                = var.tags
}