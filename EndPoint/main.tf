resource "azurerm_private_endpoint" "private-endpoint" {
  name                = var.EndPoint-name
  resource_group_name = var.RG-name
  location            = var.RG-location
  subnet_id           = var.InfraSubnet-id

  private_service_connection {
    name                           = "Private-Connection"
    private_connection_resource_id = var.resource-assoicated-id
    subresource_names              = [var.subresource-name]
    is_manual_connection           = false
  }
  ip_configuration {
    name               = "EndPoint-NIC"
    subresource_name   = var.subresource-name
    private_ip_address = var.EndPoint-private-ip
  }
}