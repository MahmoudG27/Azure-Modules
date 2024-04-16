variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the virtual network"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The location/region where the virtual network is created"
}


variable "Vnet-name" {
  type    = string
  default = "MG"
  description = "The name of the virtual network. Changing this forces a new resource to be created"
}

variable "Vnet-address" {
  type    = string
  default = "10.224.0.0/12"
  description = "The address space that is used the virtual network"
}
