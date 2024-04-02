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

variable "frontdoor-name" {
  type        = string
  default     = "demomgmg"
  description = "Specifies the name of the Front Door service. Must be globally unique"
}
