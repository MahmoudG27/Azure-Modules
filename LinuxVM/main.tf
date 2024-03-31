resource "azurerm_linux_virtual_machine" "Linux-VM" {
  name                            = var.VM-name
  resource_group_name             = var.RG-name
  location                        = var.RG-location
  size                            = var.VM-size
  admin_username                  = var.VM-user
  admin_password                  = var.VM-user-password
  computer_name                   = "MG"
  disable_password_authentication = false
  zone                            = 1
  network_interface_ids           = var.Runner-PrivateIP

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.VM-storage-account
    disk_size_gb         = var.VM-disk-size
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = var.VM-sku
    version   = "latest"
  }
}