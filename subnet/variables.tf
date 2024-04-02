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
variable "Vnet-name" {
  type = string
}

################################
# Infra Subnet
variable "Subnet-Name" {
  type    = string
  default = "infra"
}
variable "Subnet-address" {
  type    = string
  default = "10.224.0.0/16"
}