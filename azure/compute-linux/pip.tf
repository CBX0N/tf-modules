resource "azurerm_public_ip" "pip" {
  count = var.vm-conf.nic.create_public_ip != false ? 1 : 0
  name = join("-",[ "pip", local.vm-name])
  resource_group_name = var.rg-name
  location = var.location
  sku = "Basic"
  allocation_method = "Static"

  tags = var.tags
}