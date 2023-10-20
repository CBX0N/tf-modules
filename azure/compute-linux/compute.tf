resource "azurerm_linux_virtual_machine" "linux-vm" {
  name = local.vm-name
  computer_name = local.vm-name
  resource_group_name = var.rg-name
  location = var.location
  admin_username = var.vm-conf.admin_username
  size = var.vm-conf.size
  network_interface_ids = [ azurerm_network_interface.nic.id ]

  priority = var.vm-conf.spot != null ? "Spot" : "Regular"
  eviction_policy = var.vm-conf.spot != null ? var.vm-conf.spot.eviction_policy : null
  max_bid_price = var.vm-conf.spot != null ? var.vm-conf.spot.max_bid_price : null

  custom_data = var.custom_data

  admin_ssh_key {
    username   = var.vm-conf.admin_username
    public_key = azurerm_ssh_public_key.sshkey.public_key
  }

  os_disk {
    name = join("-",[ "osdisk", local.vm-name])
    storage_account_type = "Standard_LRS"
    caching = "ReadWrite"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
  tags = var.tags
}

