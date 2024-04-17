resource "azurerm_role_assignment" "MG-role" {
  principal_id                     = var.principal-id
  role_definition_name             = var.role-name
  scope                            = var.role-scope
  skip_service_principal_aad_check = true
}