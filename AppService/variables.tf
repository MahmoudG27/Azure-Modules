variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the Resource Group where the Linux Web App should exist"
}
variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The Azure Region where the Linux Web App should exist"
}

variable "plan-name" {
  type    = string
  default = "demo"
  description = "The name which should be used for this Linux Plan"
}

variable "webApp-name" {
  type    = string
  default = "mgdemo"
  description = "The name which should be used for this Linux Web App"
}