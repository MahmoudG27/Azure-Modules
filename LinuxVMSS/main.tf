resource "azurerm_orchestrated_virtual_machine_scale_set" "VMSS" {
    name                          = var.VMSS-name
    location                      = var.RG-location
    resource_group_name           = var.RG-name
    instances                     = 2
    platform_fault_domain_count   = 1
    priority                      = "Regular"
    sku_name                      = "Standard_DS1_v2"
    zones                         = ["1"]

    network_interface {
        enable_accelerated_networking = false
        enable_ip_forwarding          = false
        name                          = "test-vnet-nic01" 
        primary                       = true

        ip_configuration {
            name                                         = "test-vnet-nic01-defaultIpConfiguration"
            primary                                      = true
            subnet_id                                    = var.subnet-id
            version                                      = "IPv4"
        }
    }

    os_disk {
        caching                   = "ReadWrite"
        disk_size_gb              = var.VMSS-disk-size
        storage_account_type      = var.VMSS-storage-account
        write_accelerator_enabled = false
    }

    os_profile {
        linux_configuration {
            admin_username                  = var.VMSS-user
            admin_password                  = var.VMSS-user-password
            computer_name_prefix            = "MG"
            disable_password_authentication = false
            patch_assessment_mode           = "ImageDefault"
            patch_mode                      = "AutomaticByPlatform"
            provision_vm_agent              = true
        }
    }

    source_image_reference {
        offer     = var.VMSS-offer
        publisher = var.VMSS-offer
        sku       = var.VMSS-sku
        version   = var.VMSS-version
    }
}
