variable "RG-name" {
  type    = string
  default = "MG"
  description = "The name of the Resource Group in which the Windows Virtual Machine should be exist"
}

variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "The Azure location where the Windows Virtual Machine should exist"
}

variable "Nic-PrivateIP" {
  type = list(string)
  description = "A list of Network Interface IDs which should be attached to this Virtual Machine"
}


variable "VM-name" {
  type    = string
  default = "MG"
  description = "The name of the Windows Virtual Machine"
}

variable "VM-size" {
  type    = string
  default = "Standard_F2"
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2"
}

variable "VM-user" {
  type    = string
  default = "Mahmoud"
  description = "The username of the local administrator used for the Virtual Machine"
}

variable "VM-user-password" {
  type    = string
  default = "P@ssw0rd123@"
  description = "The Password which should be used for the local-administrator on this Virtual Machine"
}

variable "VM-storage-account" {
  type    = string
  default = "Standard_LRS"
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS"
}

variable "VM-disk-size" {
  type    = number
  default = 64
  description = "The Size of the Internal OS Disk in GB"
}

variable "VM-publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
  description = "Specifies the publisher of the image used to create the virtual machines"
}

variable "VM-offer" {
  type    = string
  default = "WindowsServer"
  description = "Specifies the offer of the image used to create the virtual machines"
}

variable "VM-sku" {
  type    = string
  default = "2016-Datacenter"
  description = "Specifies the SKU of the image used to create the virtual machines"
}

variable "VM-version" {
  type    = string
  default = "latest"
  description = "Specifies the version of the image used to create the virtual machines"
}