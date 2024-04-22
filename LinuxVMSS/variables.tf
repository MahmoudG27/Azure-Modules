variable "RG-name" {
  type    = string
  default = "MG"
}
variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "The Azure location where the Linux Virtual Machine should exist"
}

variable "NIC-PrivateIP" {
  type = list(string)
  description = " A list of Network Interface IDs which should be attached to this Virtual Machine"
}

variable "subnet-id" {
  type = string
  description = " A list of Network Interface IDs which should be attached to this Virtual Machine"
}

# VMSS Variables
variable "VMSS-name" {
  type    = string
  default = "MG"
  description = "The name of the Linux Virtual Machine"
}

variable "VMSS-size" {
  type    = string
  default = "Standard_F2"
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2"
}

variable "VMSS-user" {
  type    = string
  default = "Mahmoud"
  description = "The username of the local administrator used for the Virtual Machine."
}

variable "VMSS-user-password" {
  type    = string
  default = "P@ssw0rd123@"
  description = "The Password which should be used for the local-administrator on this Virtual Machine"
}

variable "VMSS-storage-account" {
  type    = string
  default = "Premium_LRS"
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS"
}

variable "VMSS-disk-size" {
  type    = number
  default = 64
  description = "The Size of the Internal OS Disk in GB"
}

variable "VMSS-publisher" {
  type    = string
  default = "Canonical"
  description = "Specifies the SKU of the image used to create the virtual machines"
}

variable "VMSS-offer" {
  type    = string
  default = "0001-com-ubuntu-server-jammy"
  description = "Specifies the SKU of the image used to create the virtual machines"
}

variable "VMSS-sku" {
  type    = string
  default = "22_04-lts"
  description = "Specifies the SKU of the image used to create the virtual machines"
}

variable "VMSS-version" {
  type    = string
  default = "latest"
  description = "Specifies the SKU of the image used to create the virtual machines"
}