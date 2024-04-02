resource "azurerm_subnet" "MG-subnet" {
  name                 = var.Subnet-Name
  resource_group_name  = var.RG-name
  virtual_network_name = var.Vnet-name
  address_prefixes     = [var.Subnet-address]
}