variable "RG-name" {
  type        = string
  default     = "MG"
  description = "Specifies the Name of the Resource Group within which the Private Endpoint should exist"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The supported Azure location where the resource exists"
}

variable "InfraSubnet-id" {
  type        = string
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint"
}

variable "resource-assoicated-id" {
  type        = string
  description = "The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to"
}

################################

variable "EndPoint-name" {
  type        = string
  description = "Specifies the Name of the Private Endpoint"
}
variable "EndPoint-private-ip" {
  type        = string
  description = "Specifies the static IP address within the private endpoint's subnet to be used"
}
variable "subresource-name" {
  type        = string
  description = "A list of subresource names which the Private Endpoint is able to connect to" 
}