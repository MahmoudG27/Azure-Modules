resource "azurerm_frontdoor" "MG-FrontDoor" {
  name                = var.frontdoor-name
  resource_group_name = var.RG-name

  routing_rule {
    name               = "RoutingRule1"
    accepted_protocols = ["Http", "Https"]
    patterns_to_match  = ["/*"]
    frontend_endpoints = ["FrontendEndpoint1"]
    forwarding_configuration {
      forwarding_protocol = "MatchRequest"
      backend_pool_name   = "BackendBing"
    }
  }

  backend_pool_load_balancing {
    name = "LoadBalancingSettings1"
  }

  backend_pool_health_probe {
    name = "HealthProbeSetting1"
  }

  backend_pool {
    name = "BackendBing"
    backend {
      host_header = "www.bing.com"
      address     = "www.bing.com"
      http_port   = 80
      https_port  = 443
    }

    load_balancing_name = "LoadBalancingSettings1"
    health_probe_name   = "HealthProbeSetting1"
  }

  frontend_endpoint {
    name      = "FrontendEndpoint1"
    host_name = "FrontDoor.azurefd.net"
  }
}