variable "RG-name" {
  type        = string
  default     = "MG"
  description = "Specifies the name of the Resource Group in which the Front Door service should exist"
}

variable "frontdoor-name" {
  type        = string
  default     = "demomgmg"
  description = "Specifies the name of the Front Door service. Must be globally unique"
}
