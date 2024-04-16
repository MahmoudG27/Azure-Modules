resource "azurerm_lb" "MG-lb" {
  name                = var.lb-name
  location            = var.RG-location
  resource_group_name = var.RG-name
  sku                 = var.lb-sku

  frontend_ip_configuration {
    name                 = "lbfrontendip"
    public_ip_address_id = var.PublicIP-id
  }
}
#Create Loadbalancing Rules
resource "azurerm_lb_rule" "http-rules" {
  loadbalancer_id                = azurerm_lb.MG-lb.id
  name                           = "http-inbound-rule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "lbfrontendip"
  probe_id                       = azurerm_lb_probe.http-inbound-probe.id
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.backend-pool.id]
  disable_outbound_snat          = "true"
}

#Create Probe
resource "azurerm_lb_probe" "http-inbound-probe" {
  loadbalancer_id = azurerm_lb.MG-lb.id
  name            = "http-inbound-probe"
  port            = 80
}

#Create Backend Address Pool
resource "azurerm_lb_backend_address_pool" "backend-pool" {
  loadbalancer_id = azurerm_lb.MG-lb.id
  name            = "backend-pool"
}

resource "azurerm_lb_outbound_rule" "lb-outbound" {
  name                    = "OutboundRule"
  loadbalancer_id         = azurerm_lb.MG-lb.id
  protocol                = "Tcp"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend-pool.id

  frontend_ip_configuration {
    name = "lbfrontendip"
  }
}