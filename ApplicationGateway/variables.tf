variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to the Application Gateway should exist"
}
variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The Azure region where the Application Gateway should exist"
}

variable "PublicIP-id" {
  type = string
  description = "The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the sku of this Application Gateway"
}

variable "Subnet-id" {
  type = string
  description = "The ID of the Subnet which the Application Gateway should be connected to"
}

variable "Gateway-name" {
  type    = string
  default = "Ingress-AppGateway"
  description = "The name of the Application Gateway"
}

variable "Gateway-sku" {
  type    = string
  default = "Standard_v2"
  description = "The Tier of the SKU to use for this Application Gateway. Possible values are Standard, Standard_v2, WAF and WAF_v2"
}
