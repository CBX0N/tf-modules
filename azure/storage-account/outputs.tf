output "str-id" {
  value = azurerm_storage_account.str.id
}

output "str-containers" {
  value = [for k in azurerm_storage_container.container : k.name]
}