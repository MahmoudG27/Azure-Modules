variable "RG-name" {
  type        = string
  default     = "MG"
  description = "Resource Group Name"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Resource Group Location"
}

################################

# Virtual Network
variable "Vnet-name" {
  type    = string
  default = "MG"
}
variable "Vnet-address" {
  type    = string
  default = "10.224.0.0/12"
}
