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