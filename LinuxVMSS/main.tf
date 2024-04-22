resource "azurerm_orchestrated_virtual_machine_scale_set" "VMSS" {
    name                          = var.VMSS-name
    instances                     = 2
    location                      = var.RG-location
    max_bid_price                 = -1
    platform_fault_domain_count   = 1
    priority                      = "Regular"
    resource_group_name           = var.RG-name
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

            public_ip_address {
                domain_name_label       = null
                idle_timeout_in_minutes = 15
                name                    = "publicIp-test-vnet-nic01"
                public_ip_prefix_id     = null
                sku_name                = null
                version                 = "IPv4"
            }
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
