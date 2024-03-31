resource "azurerm_dns_zone" "MG-dns" {
  name                = var.DNS-name
  resource_group_name = var.RG-name
}