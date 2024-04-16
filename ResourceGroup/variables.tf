variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The Name which should be used for this Resource Group"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The Azure Region where the Resource Group should exist"
}