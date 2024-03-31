variable "RG-name" {
  type    = string
  default = "MG"
  description = "Resource Group Name"
}

variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "Resource Group Location"
}

################################

variable "ACR-name" {
  type    = string
  default = "MGDemo"
  description = "ACR Name"
}

variable "ACR-sku" {
  type    = string
  default = "Premium"
}