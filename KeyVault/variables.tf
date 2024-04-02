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

variable "vault-name" {
  type        = string
  default     = "demo"
  description = "Specifies the name of the Key Vault"
}
variable "vault-sku" {
  type        = string
  default     = "Standard"
  description = "The Name of the SKU used for this Key Vault"
}