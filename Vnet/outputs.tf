# Virtual Network Outputs
output "Vnet-name" {
  value = azurerm_virtual_network.MG-vnet.name
}
output "Vnet-id" {
  value = azurerm_virtual_network.MG-vnet.id
}
