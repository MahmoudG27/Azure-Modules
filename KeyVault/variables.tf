variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the Key Vault"
}
variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the resource exists"
}

variable "vault-name" {
  type        = string
  default     = "demo"
  description = "Specifies the name of the Key Vault"
}
variable "vault-sku" {
  type        = string
  default     = "Standard"
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium"
}

variable "tenant-id" {
  type        = string
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault"
}