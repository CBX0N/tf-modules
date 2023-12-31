resource "azurerm_network_security_group" "nsg" {
  name                = local.nsg-name
  resource_group_name = var.rg-name
  location            = var.location
  dynamic "security_rule" {
    for_each = var.nsg-conf
    content {
      name                         = security_rule.value.name
      access                       = security_rule.value.access
      description                  = security_rule.value.description
      direction                    = security_rule.value.direction
      priority                     = security_rule.value.priority
      protocol                     = security_rule.value.protocol
      source_address_prefix        = security_rule.value.source_address_prefix
      destination_address_prefix   = security_rule.value.destination_address_prefix
      source_port_range            = security_rule.value.source_port_range
      destination_port_range       = security_rule.value.destination_port_range
      source_address_prefixes      = security_rule.value.source_address_prefixes
      destination_address_prefixes = security_rule.value.destination_address_prefixes
      source_port_ranges           = security_rule.value.source_port_ranges
      destination_port_ranges      = security_rule.value.destination_port_ranges
    }
  }
  tags = var.tags
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  for_each = { for name, snet in var.net-conf.subnet-conf : name => snet
  if snet.nsg == true }
  network_security_group_id = azurerm_network_security_group.nsg.id
  subnet_id                 = azurerm_subnet.snet[each.key].id
}