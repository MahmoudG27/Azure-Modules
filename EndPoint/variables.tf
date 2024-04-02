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

variable "InfraSubnet-id" {
  type        = string
  description = "Subnet will assoicate the private Endpoint to it"
}

variable "resource-assoicated-id" {
  type        = string
  description = "The Resource will assoicate to Private EndPoint"
}

################################

variable "EndPoint-name" {
  type        = string
  description = "EndPoint Name"
}
variable "EndPoint-private-ip" {
  type        = string
  description = "Private IP for EndPoint"
}
variable "subresource-name" {
  type        = string
  description = "The Subresource of The Resource will assoicate ex. (blob - Server - ...)"
}