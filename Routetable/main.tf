resource "azurerm_route_table" "example" {
  name                          = var.route-name
  location                      = var.RG-location
  resource_group_name           = var.RG-name
  disable_bgp_route_propagation = false

  route {
    name           = "route1"
    address_prefix = "10.1.0.0/16"
    next_hop_type  = "VnetLocal"
  }
}