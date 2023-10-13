output "vm-pip" {
  value = var.vm-conf.nic.create_public_ip != false ? azurerm_public_ip.pip[0].ip_address : null
}