resource "azurerm_key_vault" "example" {
  enable_rbac_authorization     = true
  location                      = var.RG-location
  name                          = var.vault-name
  public_network_access_enabled = true
  purge_protection_enabled      = false
  resource_group_name           = var.RG-name
  sku_name                      = var.vault-sku
  soft_delete_retention_days    = 90
  tenant_id                     = "e12a260c-947a-40e3-a826-aa800e3bcc10"

  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
}
