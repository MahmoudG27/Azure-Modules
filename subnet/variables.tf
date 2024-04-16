variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the subnet"
}

variable "Vnet-name" {
  type = string
  description = "The name of the virtual network to which to attach the subne"
}


variable "Subnet-Name" {
  type    = string
  default = "infra"
  description = "The name of the subnet"
}

variable "Subnet-address" {
  type    = string
  default = "10.224.0.0/16"
  description = "The address prefixes to use for the subnet"
}