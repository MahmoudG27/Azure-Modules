resource "azurerm_postgresql_flexible_server" "MG-PostgreSQL" {
  name                   = var.PostgreSQL-name
  resource_group_name    = var.RG-name
  location               = var.RG-location
  administrator_login    = var.PostgreSQL-user
  administrator_password = var.PostgreSQL-user-password
  zone                   = "1"
  version                = var.PostgreSQL-version

  storage_mb   = 32768
  storage_tier = "P30"

  sku_name = var.PostgreSQL-sku

}