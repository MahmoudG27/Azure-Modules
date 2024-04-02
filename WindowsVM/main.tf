resource "azurerm_windows_virtual_machine" "Windows-VM" {
  name                  = var.VM-name
  resource_group_name   = var.RG-name
  location              = var.RG-location
  size                  = var.VM-size
  admin_username        = var.VM-user
  admin_password        = var.VM-user-password
  network_interface_ids = var.Nic-PrivateIP

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.VM-storage-account
    disk_size_gb         = var.VM-disk-size
  }

  source_image_reference {
    publisher = var.VM-publisher
    offer     = var.VM-offer
    sku       = var.VM-sku
    version   = "latest"
  }
}