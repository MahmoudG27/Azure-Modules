resource "azurerm_bastion_host" "MG-bastion" {
  name                = var.bastion-name
  location            = var.RG-location
  resource_group_name = var.RG-name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.Subnet-id
    public_ip_address_id = var.PuplicIP-id
  }
}