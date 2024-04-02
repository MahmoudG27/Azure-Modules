resource "azurerm_service_plan" "MG-plan" {
  name                = var.plan-name
  resource_group_name = var.RG-name
  location            = var.RG-location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "MG-APP" {
  name                = "example"
  resource_group_name = var.RG-name
  location            = var.RG-location
  service_plan_id     = azurerm_service_plan.MG-plan.id

  site_config {}
}