variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the route table"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the resource exists"
}

variable "routetable-name" {
  type = string
  default = "MG"
  description = "The name of the route table"
}


variable "route-name" {
  type = string
  default = "MG"
  description = "The name of the route table"
}

variable "route-address-prefix" {
  type = string
  default = "10.1.0.0/16"
  description = "The destination to which the route applies. Can be CIDR (such as 10.1.0.0/16) or Azure Service Tag (such as ApiManagement, AzureBackup or AzureMonitor) format"
}

variable "route-next-hop-type" {
  type = string
  default = "VnetLocal"
  description = "The type of Azure hop the packet should be sent to. Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None"
}