resource "azurerm_network_security_group" "MG-NSG" {
  name                = var.NSG-name
  location            = var.RG-location
  resource_group_name = var.RG-name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}