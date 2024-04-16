resource "azurerm_public_ip" "MG-PublicIPIP" {
  name                = var.PublicIP-name
  resource_group_name = var.RG-name
  location            = var.RG-location
  allocation_method   = var.PublicIP-allocation-method
  sku                 = var.PublicIP-sku
}