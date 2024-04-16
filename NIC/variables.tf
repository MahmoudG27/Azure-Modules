variable "RG-name" {
  type    = string
  default = "MG"
  description = "The name of the Resource Group in which to create the Network Interface"
}

variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "The location where the Network Interface should exist"
}

variable "Subnet-id" {
  type = string
  description = "The ID of the Subnet where this Network Interface should be located in"
}


variable "Nic-name" {
  type    = string
  default = "Mg-NIC"
  description = "The name of the Network Interface"
}

variable "Nic-PrivateIP" {
  type    = string
  default = "10.224.0.70"
  description = "The Static IP Address which should be used"
}
