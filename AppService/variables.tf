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

variable "plan-name" {
  type    = string
  default = "demo"
}