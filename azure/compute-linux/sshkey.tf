resource "azurerm_ssh_public_key" "sshkey" {
  name = join("-",[ "sshkey", local.vm-name])
  resource_group_name = var.rg-name
  location = var.location
  public_key = file("~/.ssh/vmadmin-ssh.pub")
}