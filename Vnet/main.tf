resource "azurerm_virtual_network" "MG-vnet" {
  name                = var.Vnet-name
  resource_group_name = var.RG-name
  location            = var.RG-location
  address_space       = [var.Vnet-address]
}