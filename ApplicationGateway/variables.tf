variable "RG-name" {
  type    = string
  default = "MG"
  description = "Resource Group Name"
}
variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "Resource Group Location"
}
variable "Public-ip" {
  type = string
}
variable "Subnet-id" {
  type    = string
}

variable "Gateway-name" {
  type    = string
  default = "Ingress-AppGateway"
}

variable "Gateway-sku" {
  type    = string
  default = "Standard_v2"
}
