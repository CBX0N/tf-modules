output "vnet-id" {
  value = azurerm_virtual_network.vnet.id
}

output "snet-id" {
  value = { for k, v in azurerm_subnet.snet : k => v.id }
}