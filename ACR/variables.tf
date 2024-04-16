variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the Container Registry"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the resource exists"
}


variable "ACR-name" {
  type        = string
  default     = "MGDemo"
  description = "Specifies the name of the Container Registry"
}

variable "ACR-sku" {
  type    = string
  default = "Premium"
  description = "The SKU name of the container registry"
}