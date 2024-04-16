#Create Private Network Interface for GitHub Runner VM
resource "azurerm_network_interface" "MG-NIC" {
  name                = var.Nic-name
  resource_group_name = var.RG-name
  location            = var.RG-location

  ip_configuration {
    name                          = "nic-config"
    subnet_id                     = var.Subnet-id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.Nic-PrivateIP
  }
}