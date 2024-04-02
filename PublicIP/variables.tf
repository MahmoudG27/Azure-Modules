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

variable "allocation-method" {
  type    = string
  default = "Static"
}

variable "sku" {
  type    = string
  default = "Standard"
}