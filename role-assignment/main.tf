data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "MG-client-config" {}

data "azurerm_management_group" "MG-manag-grp" {name = "00000000-0000-0000-0000-000000000000"}


resource "azurerm_role_definition" "MG-role-definition" {
  role_definition_id = "00000000-0000-0000-0000-000000000000"
  name               = "my-custom-role-definition"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions     = ["Microsoft.Resources/subscriptions/resourceGroups/read"]
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

resource "azurerm_role_assignment" "MG-role" {
  name               = "00000000-0000-0000-0000-000000000000"
  scope              = data.azurerm_management_group.MG-manag-grp.id
  role_definition_id = azurerm_role_definition.MG-role-definition.role_definition_resource_id
  principal_id       = data.azurerm_client_config.MG-client-config.object_id
}