variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the Resource Group in which to create the Load Balancer"
}
variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = " Specifies the supported Azure Region where the Load Balancer should be created"
}
variable "PublicIP-id" {
  type = string
  description = "The ID of a Public IP Address which should be associated with the Load Balancer"
}

variable "lb-name" {
  type    = string
  default = "MG"
  description = "Specifies the name of the Load Balancer"
}
variable "lb-sku" {
  type    = string
  default = "Standard"
  description = "The SKU of the Azure Load Balancer. Accepted values are Basic, Standard and Gateway"
}