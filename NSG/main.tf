resource "azurerm_network_security_group" "MG-NSG" {
  name                = var.NSG-name
  location            = var.RG-location
  resource_group_name = var.RG-name

  security_rule {
    name                       = var.rule-name
    priority                   = var.rule-priority
    direction                  = var.rule-direction
    access                     = var.rule-access
    protocol                   = var.rule-protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}