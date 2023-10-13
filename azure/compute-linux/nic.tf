resource "azurerm_network_interface" "nic" {
  name = join("-",[ "nic", local.vm-name])
  location = var.location
  resource_group_name = var.rg-name
  ip_configuration {
    name = "default"
    private_ip_address_allocation = var.vm-conf.nic.private_ip_address_allocation
    private_ip_address = var.vm-conf.nic.private_ip_address
    public_ip_address_id = var.vm-conf.nic.create_public_ip != false ? azurerm_public_ip.pip[0].id : null
    subnet_id = var.snet-id
    primary = true
  }
  tags = var.tags
}