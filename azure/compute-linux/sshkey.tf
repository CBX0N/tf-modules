resource "azurerm_ssh_public_key" "sshkey" {
  name = join("-",[ "sshkey", local.vm-name])
  resource_group_name = var.rg-name
  location = var.location
  public_key = var.ssh_public_key
  tags = var.tags
}