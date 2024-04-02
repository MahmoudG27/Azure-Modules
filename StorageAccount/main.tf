resource "azurerm_storage_account" "MG-SA" {
  name                     = var.SA-name
  resource_group_name      = var.RG-location
  location                 = var.RG-name
  account_tier             = var.SA-tier
  account_replication_type = var.SA-replication
  account_kind             = var.SA-kind
}

resource "azurerm_storage_container" "MG-container" {
  name                  = var.container-name
  storage_account_name  = azurerm_storage_account.MG-SA.name
  container_access_type = var.container-access
}