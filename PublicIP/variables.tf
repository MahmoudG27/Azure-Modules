variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the Resource Group where this Public IP should exist"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the Public IP should exist"
}


variable "PublicIP-name" {
  type        = string
  default     = "PublicIP"
  description = "Specifies the name of the Public IP"
}

variable "PublicIP-allocation-method" {
  type    = string
  default = "Static"
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic"
}

variable "PublicIP-sku" {
  type    = string
  default = "Standard"
  description = "The SKU of the Public IP. Accepted values are Basic and Standard"
}