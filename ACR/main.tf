# Azure Container Registry
resource "azurerm_container_registry" "Rabbit-ACR" {
  name                          = var.ACR-name
  resource_group_name           = var.RG-name
  location                      = var.RG-location
  admin_enabled                 = true
  public_network_access_enabled = false
  sku                           = var.ACR-sku
}