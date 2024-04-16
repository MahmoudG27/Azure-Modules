variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the Bastion Host"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the resource exists"
}

variable "Subnet-id" {
  type    = string
  default = "MG"
  description = "Reference to a subnet in which this Bastion Host has been created"
}

variable "PuplicIP-id" {
  type    = string
  description = "Reference to a Public IP Address to associate with this Bastion Host"
}

variable "bastion-name" {
  type = string
  default = "MG"
  description = "Specifies the name of the Bastion Host"
}