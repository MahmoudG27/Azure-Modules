resource "azurerm_public_ip" "MG-IP" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = var.RG-name
  location            = var.RG-location
  allocation_method   = var.allocation-method
  sku                 = var.sku
}