resource "azurerm_route_table" "MG-routetable" {
  name                          = var.routetable-name
  location                      = var.RG-location
  resource_group_name           = var.RG-name
  disable_bgp_route_propagation = false

  route {
    name           = var.route-name
    address_prefix = var.route-address-prefix
    next_hop_type  = var.route-next-hop-type
  }
}